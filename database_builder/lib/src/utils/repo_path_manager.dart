import 'dart:io';
import 'package:path/path.dart' as path;

class RepoPathManager{
  static final _inputFilesRegex = RegExp(r'.*(inputFiles)$');
  static final _partiallyProcessedFilesRegex = RegExp(r'.*(partiallyProcessedFiles)$');
  static final _outputFilesRegex = RegExp(r'.*(outputFiles)$');

  static String getInputFilesPath(){
    return _getRepoDirectory().listSync().singleWhere((element) => element.path.contains(_inputFilesRegex)).path;
  }
  static String getPartiallyProcessedFilesPath(){
    return _getRepoDirectory().listSync().singleWhere((element) => element.path.contains(_partiallyProcessedFilesRegex)).path;
  }
  static String getOutputFilesPath(){
    return _getRepoDirectory().listSync().singleWhere((element) => element.path.contains(_outputFilesRegex)).path;
  }
  static Directory _getRepoDirectory(){
    var dir_path =  Directory(Directory.current.path);
    while (!path.basename(dir_path.path).contains(RegExp(r'.*(DaKanji-Dictionary)$'))){
      dir_path = dir_path.parent;
    }
    return dir_path;
  }
}