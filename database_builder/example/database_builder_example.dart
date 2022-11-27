import 'package:database_builder/database_builder.dart';
import 'package:isar/isar.dart';

void main() async {
  final isar = await Isar.open(
      [JMdictSchema, JMNEdictSchema, Kanjidic2EntrySchema, KanjiSVGSchema],
      directory: RepoPathManager.getOutputFilesPath());
  print("jmenam done");
  await jmEnamAndDictToIsar(isar);
  print("kanjidic2 done");
  await kanjidic2ToIsar(isar);
  print("kanjiVg done");
  await kanjiVGToIsar(isar);

  isar.close();
  print("ALL FINISHED");
  return;
}
