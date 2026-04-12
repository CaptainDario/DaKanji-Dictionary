import 'dart:io';
import 'package:path/path.dart' as path;

class RepoPathManager {
  static final _inputFilesRegex = RegExp(r'.*(inputFiles)$');
  static final _partiallyProcessedFilesRegex =
      RegExp(r'.*(partiallyProcessedFiles)$');
  static final _outputFilesRegex = RegExp(r'.*(outputFiles)$');

  static String getInputFilesPath() {
    return getRepoDirectory()
        .listSync()
        .singleWhere((element) => element.path.contains(_inputFilesRegex))
        .path;
  }

  static String getPartiallyProcessedFilesPath() {
    return getRepoDirectory()
        .listSync()
        .singleWhere(
            (element) => element.path.contains(_partiallyProcessedFilesRegex))
        .path;
  }

  static String getOutputFilesPath() {
    return getRepoDirectory()
        .listSync()
        .singleWhere((element) => element.path.contains(_outputFilesRegex))
        .path;
  }

  static Directory getRepoDirectory() {
    var dirPath = Directory(Directory.current.path);
    while (!path
        .basename(dirPath.path)
        .contains(RegExp(r'.*(DaKanji-Dictionary)$', caseSensitive: false))) {
      dirPath = dirPath.parent;
    }
    return dirPath;
  }
}
