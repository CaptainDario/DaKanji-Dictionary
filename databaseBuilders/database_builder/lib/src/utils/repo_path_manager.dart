import 'dart:io';

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
    var path =  Directory(Directory.current.path);
    while (!path.listSync().any((element) => element.path.contains(RegExp(r'.*(databaseBuilders)$')))){
      path = path.parent;
    }
    return path;
  }
}