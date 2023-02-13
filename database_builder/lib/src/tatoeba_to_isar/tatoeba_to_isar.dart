import 'dart:convert';
import 'dart:io';
import 'package:compute/compute.dart';

import 'package:console_bars/console_bars.dart';
import 'package:tuple/tuple.dart';
import 'package:async/async.dart';

import 'package:database_builder/database_builder.dart';



/// Converts examples (`sentences_base.csv` and `sentences.csv`) from tatoeba
/// to a JSON files and those to a ISAR database
Future<bool> tatoebaToIsar() async {

  // load examples
  String tatoebaPath = RepoPathManager.getInputFilesPath() + "/tatoeba";
  // parse all example sentences from tatoeba to one map
  Map<int, Tuple2<String, String>> sentences =  
    await parseSentences("$tatoebaPath/sentences.csv");
  
  // Finde the translations matching the sentences
  Map<String, Map<int, String>> translations = 
    await matchSentencesAndTranslations("$tatoebaPath/links.csv", sentences);
  // store them as json to disk
  var dir = Directory("${RepoPathManager.getOutputFilesPath()}/tatoeba_json/");
  dir.createSync();
  List<String >translationsCnt = [];
  for (var element in translations.entries) {
    File("${dir.path}/${element.key}.json")
      .writeAsStringSync(json.encode(
        // convert the keys from int to string to be able to encode as json
        element.value.map((key, value) => MapEntry(key.toString(), value)))
      );
    translationsCnt.add("${element.key}, ${element.value.length}");
  }
  File("${dir.path}/examples_counts.txt").writeAsStringSync(translationsCnt.toString());

  // add mecab output to examples
  await runMeCabOnJpnJson(RepoPathManager.getOutputFilesPath() + "/tatoeba_json/jpn.json");

  // convert all examples to ISAR
  //await jsonToIsar();

  return true;
}

/// Parses tatoeba examples from `sentences.csv` in `Platform.numberOfProessors`
/// processes. `path` should be the path to the sentences
Future<Map<int, Tuple2<String, String>>> parseSentences(String path) async{

  Map<int, Tuple2<String, String>> sentences = {};

  // convert all sentences to a map
  // split the sentence into number of processor and parse them separately
  String sentencesContent = File(path).readAsStringSync();
  List<String> lines = sentencesContent.split('\n');
  int chunkSize = (lines.length / Platform.numberOfProcessors).floor();
  FutureGroup<Map<int, Tuple2<String, String>>> parsers = FutureGroup();
  for (int i = 0; i < Platform.numberOfProcessors; i++) {
    parsers.add(
      compute(
        parseSentencesList,
        Tuple2(
          // only print the progress for the first process
          i == 0 ? true : false,
          lines.sublist(
            chunkSize*i,
            // use the whole length of the examples list for the last process
            i != Platform.numberOfProcessors-1 ? chunkSize*(i+1) : lines.length
          )
        )
      )
    );
  }
  parsers.close();
  // wait for all processes to finish
  await parsers.future.then((sentencesMaps) {
      for (var element in sentencesMaps) {
        sentences.addAll(element);
      }
    }
  );
  print("\Loaded: ${sentences.length} sentences");

  return sentences;
}

/// Function that parses tatoeba example sentences into a map and returns them.
/// Tatoeba format: id \t iso 639-3, sentence
/// 
/// `args.item1` - should the progress be dumped to console
/// `args.item2` - the list of examples that should be parsed
Map<int, Tuple2<String, String>> parseSentencesList(Tuple2<bool, List<String>> args){

  Map<int, Tuple2<String, String>> sentences = {};

  FillingBar? progressBar;
  if(args.item1 == true){
    progressBar = FillingBar(
      desc: "Parsing examples (Process 1)",
      total: args.item2.length,
      time: true,
      percentage: true,
    );
  }

  for (var line in args.item2) {
    /// splite the line into: [ID, iso 639-3, text]
    List<String> lineSplit = line.split("\t");
    try{
      sentences[int.parse(lineSplit[0])] = Tuple2(lineSplit[1], lineSplit[2]);

      if (progressBar != null){
        progressBar.increment();
      }
    }
    on Exception{
      print("Exception on: '$line'");
    }
  }

  return sentences;
}


/// Uses the output of `parseSentences` and `links.csv`to find translations for
/// all example sentences and create a map of sentences and their translations,
/// lastly returns this Map.
Future<Map<String, Map<int, String>>> matchSentencesAndTranslations(
  String path, Map<int, Tuple2<String, String>> sentences) async 
{
  Map<String, Map<int, String>> translations = {};

  String sentencesBaseContent = File(path).readAsStringSync();
  List<String> lines = sentencesBaseContent.split('\n');

  int chunkSize = (lines.length / Platform.numberOfProcessors).floor();
  FutureGroup<Map<String, Map<int, String>>> parsers = FutureGroup();
  for (int i = 0; i < Platform.numberOfProcessors; i++) {
    parsers.add(
      compute(
        matchSentenceAndTranslationList,
        Tuple3(
          // only print the progress for the first process
          i == 0 ? true : false,
          lines.sublist(
            chunkSize*i,
            // use the whole length of the examples list for the last process
            i != Platform.numberOfProcessors-1 ? chunkSize*(i+1) : lines.length
          ),
          sentences
        )
      )
    );
  }
  parsers.close();

  // wait for all processes to finish
  await parsers.future.then((translationsMaps) {
      for (var translationsMap in translationsMaps) {
        for (var sentences in translationsMap.entries) {
          //print(sentences);
          if(!translations.containsKey(sentences.key)){
            translations[sentences.key] = {};
          }
          translations[sentences.key]!.addAll(sentences.value);
        }
      }
    }
  );

  return translations;
}

/// Converts a list of sentences to Map of languages and their translation's IDs
/// Returns this Map.
///
/// `args.item1` - should the progress be dumped to console as a ProgressBar
/// `args.item2` - the list of all links from `links.csv`
/// `args.item3` - a Map of IDs and their sentences (like the output from
///                `parseSentences`)
Future<Map<String, Map<int, String>>> matchSentenceAndTranslationList(
  Tuple3<bool, List<String>, Map<int, Tuple2<String, String>>> args) async
{

  Map<String, Map<int, String>> translations = {"jpn" : {}};

  FillingBar? progressBar;
  if(args.item1){
    progressBar = FillingBar(
      desc: "Matching examples and translations",
      total: args.item2.length,
      time: true,
      percentage: true
    );
  }
  for (var line in args.item2) {
    progressBar?.increment();
    // splite the line into: [ID, translated ID]
    List<String> lineSplit = line.split("\t");

    try{
      int originalID = int.parse(lineSplit[0]); Tuple2<String, String> original;
      if(args.item3.containsKey(originalID))  
        original = args.item3[originalID]!;
      else{continue;}

      int translationID = int.parse(lineSplit[1]); Tuple2<String, String> translation;
      if(args.item3.containsKey(translationID))
        translation = args.item3[translationID]!;
      else{continue;}

      // sentence is Japanese
      if(original.item1 == "jpn"){
      // do not include jpn <-> jpn translations
      if(translation.item1 == "jpn"){continue;}
      // add language to map if it does not already exist
      if(!translations.containsKey(translation.item1)){translations[translation.item1] = {};}
      // add japanese sentence with id to jpn map and translation to its map
      translations["jpn"]![originalID] = original.item2;
      translations[translation.item1]![originalID] = translation.item2;
    }
    }
    catch (e) {
      print("Exception on $lineSplit");
      continue;
    }
  }

  return translations;

}

/// Add PoS and mecab parsing to all Japanese sentences using `python3 parse.py`
Future<void> runMeCabOnJpnJson(String path) async {
  var proc = await Process.start(
    "python3", ["lib/src/tatoeba_to_isar/parse.py", path], runInShell: true
  );
  await stdout.addStream(proc.stdout);
}


/// Adds the content of the json file at `path` (needs to be in the format that
/// `sentencesToTranslations`) outputs to the ISAR database
Future<void> tatoebaJsonToIsar(String path) async {
  throw Exception("Not implemented");
}



