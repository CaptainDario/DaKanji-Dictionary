import 'dart:convert';
import 'dart:io';
import 'package:compute/compute.dart';

import 'package:console_bars/console_bars.dart';
import 'package:tuple/tuple.dart';
import 'package:async/async.dart';
import 'package:isar/isar.dart';

import 'data_classes.dart';
import 'package:database_builder/database_builder.dart';



/// Converts examples (`links.csv` and `sentences.csv`) from tatoeba
/// to JSON files and writes them to `outputFiles/tatoeba_json/`. Afterwards,
/// adds examples to the given `isar` database.
/// `translationThreshold` indicates how many translations a language needs to 
/// have to be added to `isar`.
Future<void> tatoebaToIsar(Isar isar, {int translationCountThreshold = 100}) async {

  // convert tatoeba examples to json
  await tatoebaToJson();

  // populate the ISAR database with the japanese examples
  await createTatoebaIsar(isar);

  // add all translations to the ISAR database
  await addTatoebaTranslationsJsonsToIsar(
    "${RepoPathManager.getOutputFilesPath()}/tatoeba_json/",
    isar, translationCountThreshold
  );
}

/// Converts examples (`links.csv` and `sentences.csv`) from tatoeba
/// to JSON files and writes them to `outputFiles/tatoeba_json/`.
Future<void> tatoebaToJson() async {

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
        element.value.map((key, value) => MapEntry(key.toString(), value))
      ));
    translationsCnt.add("${element.key}, ${element.value.length}");
  }
  File("${RepoPathManager.getOutputFilesPath()}/examples_counts.txt")
    .writeAsStringSync(translationsCnt.toString());

  // add mecab output to examples
  await runMeCabOnJpnJson(RepoPathManager.getOutputFilesPath() + "/tatoeba_json/jpn.json");
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
  print("Loaded: ${sentences.length} sentences");

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

/// Adds tatoeba examples to `isar`
/// 
/// Note: only Adds the Japanese examples, but does not add any translations.
/// Add translations with `tatoebaTranslationsJsonToIsar`
Future<void> createTatoebaIsar(Isar isar) async{

  String jpnMecabString =
    File("${RepoPathManager.getOutputFilesPath()}/tatoeba_json/jpn_mecab.json").readAsStringSync(); 
  Map<String, dynamic> jpnMecabMap = jsonDecode(jpnMecabString);
  
  FillingBar progressBar = FillingBar(
    total: jpnMecabMap.length,
    desc: "Adding tatoeba jp to isar",
    time: true,
    percentage: true,
  );
  for (MapEntry example in jpnMecabMap.entries) {
    // convert dynamic json to List<List<String>> 
    // this list only includes the PoS elements that mecab outputs
    List<String> pos = [];
    for (var i in example.value[2]) {
      for (int j = 0; j < i.length; j++) {
        if(j < 4){
          pos.add(i[j]);
        }
      }
    }
    isar.writeTxnSync(() => 
      isar.tatoebas.putSync(
        Tatoeba(
          id             : int.parse(example.key),
          sentence       : example.value[0],
          mecabBaseForms : List<String>.from(example.value[1]),
          mecabPos       : pos,
        )
      )
    );
    progressBar.increment();
  }
  print("Added ${isar.tatoebas.countSync()} examples entries to isar");
}

/// Adds all translations from all .json files in `dirPath` to `isar`. If a 
/// language has less than `translationCountThreshold` translations it is being
/// ignored
Future<void> addTatoebaTranslationsJsonsToIsar(
  String dirPath, Isar isar, int translationCountThreshold) async 
{
  List<String>langsAdded = [];
  
  // get all files in the language json directory that start with a language
  // code that is not `jpn` and end with `.json`
  Directory jsonsDir = Directory(dirPath);
  List<FileSystemEntity> files = jsonsDir.listSync(followLinks: false)
    .where((f) => 
      f.uri.pathSegments.last.length == 8 &&
      !f.uri.pathSegments.last.startsWith("jpn") &&
      f.uri.pathSegments.last.endsWith(".json")
    ).toList();

  // iterate over the files
  for (int i = 0; i < files.length; i++) {
    File file = File(files[i].path);
    String language = file.uri.pathSegments.last.replaceAll(".json", "");

    bool added = await addTatoebaTranslationsJsonToIsar(
      isar, file.readAsStringSync(), language,
      translationCountThreshold: translationCountThreshold
    );
    if(added){
      langsAdded.add(language);
    }
    print("Finished $language ($i/${files.length})");
  }
  
  print("Languages added: $langsAdded, did not add: ${files.length - langsAdded.length} languages");
  File("${RepoPathManager.getOutputFilesPath()}/languages_added.txt")
    .writeAsStringSync(langsAdded.toString());
}

/// Adds the content of jsonString (needs to be in the format that
/// `sentencesToTranslations` outputs) to the `isar` database. Returns true,
/// if the content of the .json has been added to `isar`
/// 
/// Note: The database is expected to already have entries for each example in
/// `jsonPath`.
/// Caution: Overrides translations if an example already contains a translation
/// for a given language
Future<bool> addTatoebaTranslationsJsonToIsar(
  Isar isar, String jsonString, String language,
  {int translationCountThreshold = 100}) async 
{
  bool added = false;

  Map jsonMap = jsonDecode(jsonString);
  if(jsonMap.entries.length >= translationCountThreshold){
    FillingBar progress = FillingBar(total: jsonMap.length, desc: "Adding $language to isar");
    for (var entry in jsonMap.entries) {
      // get the japanese sentence entry from ISAR
      Tatoeba example = isar.tatoebas.getSync(int.parse(entry.key))!;

      // update the entry, and write it back to ISAR
      isar.writeTxnSync(() {
        example.translations = [
          // copy all translations except for the language that is beign added
          ...example.translations.where((e) => e.language != entry.key),
          Translation(language: language, sentence: entry.value)
        ];
        isar.tatoebas.putSync(example);
      });
      progress.increment();
    }
    added = true;
  }

  return added;
}



