import 'dart:convert';
import 'dart:io';
import 'package:compute/compute.dart';

import 'package:console_bars/console_bars.dart';
import 'package:tuple/tuple.dart';
import 'package:async/async.dart';
import 'package:mecab_dart/mecab_dart.dart';

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
  Map<String, Map<int, List<String>>> translations = 
    await matchSentencesAndTranslations("$tatoebaPath/links.csv", sentences);
  // store them as json to disk
  var dir = Directory("${RepoPathManager.getOutputFilesPath()}/tatoeba_json/");
  dir.createSync();
  translations.forEach((key, value) async {
    await File("${dir.path}/$key.json")
      .writeAsString(json.encode(
        // convert the keys from int to string to be able to encode as json
        value.map((key, value) => MapEntry(key.toString(), value)))
      );
  });

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
  await parsers.future.then((value) {
      for (var element in value) {
        sentences.addAll(element);
      }
    }
  );
  print(sentences.length);

  return sentences;
}

/// Function that parses tatoeba example sentences into a map and returns them.
/// Tatoeba format: id \t iso 639-3, sentence
/// 
/// `args.item1` - should the progress be dumped to console
/// `args.item2` - the list of examples that should be parsed
Map<int, Tuple2<String, String>> parseSentencesList(Tuple2<bool, List<String>> args){

  Map<int, Tuple2<String, String>> sentences = {};

  FillingBar? p;
  if(args.item1 == true){
    p = FillingBar(
      desc: "Parsing examples (Process 1)",
      total: args.item2.length,
      time: true,
      percentage: true,
      //width: 20
    );
  }

  for (var line in args.item2) {
    /// splite the line into: [ID, iso 639-3, text]
    List<String> s = line.split("\t");
    try{
      sentences[int.parse(s[0])] = Tuple2(s[1], s[2]);

      if (p != null){
        p.increment();
      }
    }
    on Exception{
      print("Exception on: '$line'");
    }
  }

  return sentences;
}


/// Uses the output of `parseSentences` to find translations for all 
/// example sentences and create a map of sentences and their translations
Future<Map<String, Map<int, List<String>>>> matchSentencesAndTranslations(
  String path, Map<int, Tuple2<String, String>> sentences) async 
{

  String sentencesBaseContent = File(path).readAsStringSync();
  List<String> lines = sentencesBaseContent.split('\n').sublist(0, 500000);
  Map<String, Map<int, List<String>>> translations =
    await matchSentenceAndTranslationList(
      Tuple3(true, lines, sentences)
    );

  return translations;
}

/// 
///
/// `args.item1` - should the progress be dumped to console
/// `args.item2` - 
/// `args.item3` - 
/// 
/// TODO docs 
/// TODO run in parallel
/// TODO use links.csv
/// TODO remove \N || 0 check
Future<Map<String, Map<int, List<String>>>> matchSentenceAndTranslationList(
  Tuple3<bool, List<String>, Map<int, Tuple2<String, String>>> args) async
{

  Map<String, Map<int, List<String>>> translations = {"jpn" : {}};
  Mecab mecab = await Mecab();
  mecab.initWithIpadicDir("ipadic", true);

  FillingBar? p;
  if(args.item1){
    p = FillingBar(
      desc: "Matching examples and translations",
      total: args.item2.length,
      time: true,
      percentage: true
    );
  }
  for (var line in args.item2) {
    p?.increment();
    // splite the line into: [ID, translated ID]
    List<String> s = line.split("\t");

    int oriID = int.parse(s[0]); Tuple2<String, String> ori;
    if(args.item3.containsKey(oriID)){ori = args.item3[oriID]!;}
    else{continue;}

    int transID = int.parse(s[1]); Tuple2<String, String> trans;
    if(args.item3.containsKey(transID)){trans = args.item3[transID]!;}
    else{continue;}
    
    // sentence is Japanese
    if(ori.item1 == "jpn"){
      // do not include jpn <-> jpn translations
      if(trans.item1 == "jpn"){continue;}
      // add language to map if it does not already exist
      if(!translations.containsKey(trans.item1)){translations[trans.item1] = {};}
      // TODO Add mecab split, mecab PoS
      // add japanese sentence with id to jpn map and translation to its map
      translations["jpn"]![oriID] = [ori.item1];
      translations[trans.item1]![oriID] = [trans.item2];
    }
  }

  return translations;

}


/// Adds the content of the json file at `path` (needs to be in the format that
/// `sentencesToTranslations`) outputs to the ISAR database
Future<void> tatoebaJsonToIsar(String path) async {

}



