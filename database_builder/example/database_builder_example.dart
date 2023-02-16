import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:isar/isar.dart';

import 'package:database_builder/database_builder.dart';



void main() async {

  // all languages that should be included in the dict and examples
  List<String> languagesToInclude = [
    "eng", "ger", "rus", "chi", "ita", "fre",  "spa", "pol",
  ];

  final isar = await Isar.open(
    [JMdictSchema, JMNEdictSchema, Kanjidic2Schema, KanjiSVGSchema, TatoebaSchema],
    name: "dictionary",
    directory: RepoPathManager.getOutputFilesPath()
  );
  
  await jmEnamAndDictToIsar(isar, languagesToInclude);
  print("jmenam done");
  //await kanjidic2ToIsar(isar);
  print("kanjidic2 done");
  //await kanjiVGToIsar(isar);
  print("kanjiVg done");
  
  //await tatoebaToIsar(isar);
  print("Tatoeba done");

  isar.close();

  return;

  var encoder = ZipFileEncoder();
  encoder.create("${RepoPathManager.getOutputFilesPath()}/dictionary.zip");
  encoder.addFile(File("${RepoPathManager.getOutputFilesPath()}/dictionary.isar"));
  encoder.close();
  print("Zipping DB done");

  print("ALL FINISHED");
  return;
  
}

