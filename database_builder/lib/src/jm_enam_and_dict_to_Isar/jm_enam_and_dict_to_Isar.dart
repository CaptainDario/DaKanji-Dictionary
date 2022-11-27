import 'dart:io';
import 'dart:convert';
import 'package:database_builder/database_builder.dart';
import 'json_to_Isar.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as p;

// Future<bool> main() async {
Future<bool> jmEnamAndDictToIsar(Isar isar) async {
  // final isar = await Isar.open([JMdictSchema, JMNEdictSchema]);

  if (isar.jmdict.countSync() <= 0) {
    print("Starting reading json for jmdict");
    List jmdict = jsonDecode(await File(p.join(
            RepoPathManager.getPartiallyProcessedFilesPath(),
            'JMdict',
            'jmdict.json'))
        .readAsString());
    print("Json read, putting objects to box");
    jsonToIsar<JMdict>(jmdict, isar);
  }
  if (isar.jmnedict.countSync() <= 0) {
    print("Starting reading json for jmnedict");
    List jmnedict = jsonDecode(await File(p.join(
            RepoPathManager.getPartiallyProcessedFilesPath(),
            'JMdict',
            'jmnedict.json'))
        .readAsString());
    print("Json read, putting objects to box");
    jsonToIsar<JMNEdict>(jmnedict, isar);
  }

  // HERE IS THE EXAMPLE QUERY
  //isar.entrys.filter().meanings((LanguageMeanings) => LanguageMeanings.meaningsElementContains("city")).findFirstSync();
  // isar.entrys.filter().meaningsElement((LanguageMeanings) => LanguageMeanings.meaningsElementContains("eat")).findFirstSync(); // bad - it returns something like mEAT
  // isar.jmdict.filter().meaningsElement((LanguageMeanings) => LanguageMeanings.meaningsElementStartsWith("eat")) // good - it returns eat
  //                     .and().meaningsElement((q) => q.languageEqualTo("ger")).findFirstSync();

  return Future<bool>.value(false);
}
