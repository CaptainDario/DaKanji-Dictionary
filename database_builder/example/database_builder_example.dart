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

  await createKradIsar();
  await createRadkIsar();

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
  print("jm/enam created with entries: ${isarDict.jmdict.countSync()}");
  await addAccentsToDict(isarDict);
  print("accents added");
  await addJLPTToDict(isarDict);
  print("JLPT added");
  processAudios(isarDict);
  print("Audios added");
  await kanjidic2ToIsar(isarDict);
  print("kanjidic2 done");
  await kanjiVGToIsar(isarDict);
  print("kanjiVg done");

  isarDict.close();
  print("Dictionary.zip done");

  
  var encoder = ZipFileEncoder();
  encoder.create("${RepoPathManager.getOutputFilesPath()}/dictionary.zip");
  encoder.addFile(File("${RepoPathManager.getOutputFilesPath()}/dictionary.isar"));
  encoder.close();
  print("Zipping Dict DB done");

  encoder.create("${RepoPathManager.getOutputFilesPath()}/audios.zip");
  encoder.addDirectory(Directory("${RepoPathManager.getOutputFilesPath()}/audios"));
  encoder.close();
  print("Zipping audios done");
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


Future<void> createKradIsar() async {

  final isarKrad = await Isar.open(
    [KradSchema],
    name: "krad",
    directory: RepoPathManager.getOutputFilesPath()
  );

  final isarDict = await Isar.open(
    [JMdictSchema, Kanjidic2Schema, KanjiSVGSchema], //JMNEdictSchema],
    name: "dictionary",
    directory: RepoPathManager.getOutputFilesPath()
  );
  
  await kradToIsar(isarKrad, isarDict.kanjidic2s);
  print("Krad done");

  isarKrad.close();

  var encoder = ZipFileEncoder();
  encoder.create("${RepoPathManager.getOutputFilesPath()}/krad.zip");
  encoder.addFile(File("${RepoPathManager.getOutputFilesPath()}/krad.isar"));
  encoder.close();
  print("Zipping Krad DB done");

}

Future<void> createRadkIsar() async {

  final isarRadk = await Isar.open(
    [RadkSchema],
    name: "radk",
    directory: RepoPathManager.getOutputFilesPath()
  );
  
  await radkToIsar(isarRadk);
  print("Radk done");

  isarRadk.close();

  var encoder = ZipFileEncoder();
  encoder.create("${RepoPathManager.getOutputFilesPath()}/radk.zip");
  encoder.addFile(File("${RepoPathManager.getOutputFilesPath()}/radk.isar"));
  encoder.close();
  print("Zipping Radk DB done");

}