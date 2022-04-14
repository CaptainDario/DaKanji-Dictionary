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
  });
}