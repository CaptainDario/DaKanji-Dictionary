import 'package:database_builders_utils/database_builders_utils.dart';
import 'package:test/test.dart';

void main() {
  group('Repo path manager', () {
    final repoPathManager = RepoPathManager();

    setUp(() {
      // Additional setup goes here.
    });

    test('getInputFilesPath', () {
      expect(repoPathManager.getInputFilesPath().contains("DaKanji-Dictionary\\inputFiles"), true);
    });
    test('getPartiallyProcessedFilesPath',(){
      expect(repoPathManager.getPartiallyProcessedFilesPath().contains("DaKanji-Dictionary\\partiallyProcessedFiles"), true);
    });
    test('getOutputFilesPath',(){
      expect(repoPathManager.getOutputFilesPath().contains("DaKanji-Dictionary\\outputFiles"), true);
    });
  });
}
