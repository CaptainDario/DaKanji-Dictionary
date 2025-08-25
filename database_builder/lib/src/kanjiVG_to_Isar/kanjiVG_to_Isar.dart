import 'dart:io';
import 'package:database_builder/database_builder.dart';
import 'package:isar_community/isar.dart';
import 'package:path/path.dart' as p;



/// Extracts the stroke count from the given `fileContent` (kanjivg entry)
short getStrokeCount(String fileContent){
  return RegExp(r'<text transform="matrix.*<\/text>').allMatches(fileContent).length;
}

/// Extracs all radicals from the given `fileContent` (kanjivg entry)
List<String> getAllRadicals(String fileContent){
  List<String> radicals = <String>[];
  for (final Match m in RegExp(r'<g.* kvg:element="(.)".* kvg:radical="(.)*">').allMatches(fileContent)) {
    radicals.add(m.group(1)!);
  }
  return radicals;
}

/// Converts the kanjiVG database to an isar instance
Future<bool> kanjiVGToIsar(Isar isar) async {
  
  print("Starting kanjiVg");
  
  if (isar.kanjiSVGs.countSync() <= 0) {
    Stopwatch stopwatch = Stopwatch()..start();
    Directory dir = Directory(
        p.join(RepoPathManager.getPartiallyProcessedFilesPath(), 'kanjiVG'));
    List<KanjiSVG> kanjis = <KanjiSVG>[];
    await for (var file in dir.list()) {
      if (file is File && file.path.endsWith(".svg")) {
        String character = String.fromCharCode(int.parse(
            p.basenameWithoutExtension(file.path).substring(0, 5),
            radix: 16));
        var fileContent = (file).readAsStringSync();

        var kanjiSVG = KanjiSVG(
          kanjiVGId: file.uri.pathSegments.last.replaceAll(".svg", ""),
          character: character,
          svg: fileContent,
          strokes: getStrokeCount(fileContent),
          radicals: getAllRadicals(fileContent)
        );
        kanjis.add(kanjiSVG);
      }
    }
    await isar.writeTxn(() => isar.kanjiSVGs.putAll(kanjis));
    print('${stopwatch.elapsed}');
  }
  print("kanjiVg finished");
  // // print(dbName + ": " + "Data inserted into box, closing - please wait");
  return Future<bool>.value(false);
}
