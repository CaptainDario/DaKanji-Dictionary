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
    setUp(() async {
      // making sure that everything is loading allright
      expect(await jmEnamAndDictToHive(), false);
      expect(await kanjiVGToHive(), false);
      expect(await kanjidic2ToHive(), false);
    });

    test('Jm_enam_and_dict', () async {
      expect(true, true);
    });
    });
  });
}