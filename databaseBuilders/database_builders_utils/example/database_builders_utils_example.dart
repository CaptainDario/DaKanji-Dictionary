import 'package:database_builders_utils/database_builders_utils.dart';

void main() {
  print(RepoPathManager.getInputFilesPath());
  print(RepoPathManager.getPartiallyProcessedFilesPath());
  print(RepoPathManager.getOutputFilesPath());
}
