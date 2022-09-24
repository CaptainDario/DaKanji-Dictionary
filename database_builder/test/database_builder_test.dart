import 'package:database_builder/database_builder.dart';
import 'package:test/test.dart';
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
  group('Box creators', () {
    test('Jm_enam_and_dict', () async {
      expect(await jmEnamAndDictToObjectbox(), false);
    });
    test("kanjidic_to_objectbox", () async {
      expect(await kanjiVGToObjectbox(), false);
    });
    test("kanjiVG_to_objectbox.dart", () async {
      expect(await kanjidic2ToObjectbox(), false);
    });
    });
  });
}