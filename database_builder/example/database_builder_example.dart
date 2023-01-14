import 'package:database_builder/database_builder.dart';
import 'package:isar/isar.dart';

void main() async {
  final isar = await Isar.open(
      [JMdictSchema, JMNEdictSchema, Kanjidic2Schema, KanjiSVGSchema],
      name: "dictionary",
      directory: RepoPathManager.getOutputFilesPath());
  await jmEnamAndDictToIsar(isar);
  print("jmenam done");
  await kanjidic2ToIsar(isar);
  print("kanjidic2 done");
  await kanjiVGToIsar(isar);
  print("kanjiVg done");
  isar.close();
  print("ALL FINISHED");
  return;
}
