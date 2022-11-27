import 'package:database_builder/database_builder.dart';
import 'package:test/test.dart';
import 'package:isar/isar.dart';
void main() {
  group('Repo path manager', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('getInputFilesPath', () {
      expect(RepoPathManager.getInputFilesPath().contains("DaKanji-Dictionary\\inputFiles"), true);
    });
    test('getPartiallyProcessedFilesPath',(){
      expect(RepoPathManager.getPartiallyProcessedFilesPath().contains("DaKanji-Dictionary\\partiallyProcessedFiles"), true);
    });
    test('getOutputFilesPath',(){
      expect(RepoPathManager.getOutputFilesPath().contains("DaKanji-Dictionary\\outputFiles"), true);
    });
  });
  group("Isar", (){
    late Isar isar;
    setUp(() async{
      await Isar.initializeIsarCore(download: true);
      isar = await Isar.open([JMdictSchema, JMNEdictSchema, Kanjidic2EntrySchema, KanjiSVGSchema], directory: RepoPathManager.getOutputFilesPath());
    });
    
    test('Jm_enam_and_dict', () async {
      expect(await jmEnamAndDictToIsar(isar), false);
      
    });
    test("kanjidic_to_objectbox", () async {
      expect(await kanjiVGToIsar(isar), false);
    });
    test("kanjiVG_to_objectbox.dart", () async {
      expect(await kanjidic2ToIsar(isar), false);
    });
    tearDown((){
      isar.close();
    });
  });
}