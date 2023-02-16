import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:isar/isar.dart';

import 'package:database_builder/database_builder.dart';



void main() async {

  // all languages that should be included in the dict and examples
  List<String> iso639_2ToInclude = ["eng", "ger", "rus", "chi", "ita", "fre", "spa", "pol"];
  List<String> iso639_3oInclude  = ["eng", "deu", "rus", "zho", "ita", "fra", "spa", "pol"];

  final isar = await Isar.open(
    [JMdictSchema, JMNEdictSchema, Kanjidic2Schema, KanjiSVGSchema, ExampleSentenceSchema],
    name: "dictionary",
    directory: RepoPathManager.getOutputFilesPath()
  );
  
  await jmEnamAndDictToIsar(isar, iso639_2ToInclude);
  print("jmenam done");
  await kanjidic2ToIsar(isar);
  print("kanjidic2 done");
  await kanjiVGToIsar(isar);
  print("kanjiVg done");
  
  await tatoebaToIsar(isar, iso639_3oInclude);
  print("Tatoeba done");

  isar.close();

  var encoder = ZipFileEncoder();
  encoder.create("${RepoPathManager.getOutputFilesPath()}/dictionary.zip");
  encoder.addFile(File("${RepoPathManager.getOutputFilesPath()}/dictionary.isar"));
  encoder.close();
  print("Zipping DB done");

  print("ALL FINISHED");
  return;
  
}

