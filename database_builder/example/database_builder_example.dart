import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:isar/isar.dart';

import 'package:database_builder/database_builder.dart';



void main() async {

  // all languages that should be included in the dict
  List<String> iso639_2ToInclude = ["eng", "ger", "rus", "chi", "ita", "fre", "spa", "pol"];
  await createDictionaryIsar(iso639_2ToInclude);

  // all languages that should be included in the examples
  List<String> iso639_3oInclude  = ["eng", "deu", "rus", "zho", "ita", "fra", "spa", "pol"];
  await createExamplesIsar(iso639_3oInclude);

  print("ALL FINISHED");
  return;
  
}


Future<void> createDictionaryIsar(List<String> iso639_2ToInclude) async {

  final isarDict = await Isar.open(
    [JMdictSchema, Kanjidic2Schema, KanjiSVGSchema], //JMNEdictSchema],
    name: "dictionary",
    directory: RepoPathManager.getOutputFilesPath()
  );
  
  await jmEnamAndDictToIsar(isarDict, iso639_2ToInclude);
  print("jmenam done");
  await kanjidic2ToIsar(isarDict);
  print("kanjidic2 done");
  await kanjiVGToIsar(isarDict);
  print("kanjiVg done");

  isarDict.close();

  var encoder = ZipFileEncoder();
  encoder.create("${RepoPathManager.getOutputFilesPath()}/dictionary.zip");
  encoder.addFile(File("${RepoPathManager.getOutputFilesPath()}/dictionary.isar"));
  encoder.close();
  print("Zipping Dict DB done");
}


Future<void> createExamplesIsar(List<String> iso639_3oInclude) async {
  final isarExamples = await Isar.open(
    [ExampleSentenceSchema],
    name: "examples",
    directory: RepoPathManager.getOutputFilesPath()
  );
  
  await tatoebaToIsar(isarExamples, iso639_3oInclude);
  print("Tatoeba done");

  isarExamples.close();

  var encoder = ZipFileEncoder();
  encoder.create("${RepoPathManager.getOutputFilesPath()}/examples.zip");
  encoder.addFile(File("${RepoPathManager.getOutputFilesPath()}/examples.isar"));
  encoder.close();
  print("Zipping Examples DB done");
}
