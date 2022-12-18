import 'dart:io';
import 'package:database_builder/database_builder.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as p;

short getStrokeCount(String fileContent){
  return RegExp(r'<text transform="matrix.*<\/text>').allMatches(fileContent).length;
}

List<String> getAllRadicals(String fileContent){
  List<String> radicals = <String>[];
  for (final Match m in RegExp(r'<g.* kvg:element="(.)".* kvg:radical="general">').allMatches(fileContent)) {
    radicals.add(m.group(1)!);
  }
  return radicals;
}

Future<bool> kanjiVGToIsar(Isar isar) async {
// Future<bool> main() async{
  var dbName = 'kanji_SVG';
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

        var kanjiSVG = KanjiSVG(character: character, svg: fileContent, strokes: getStrokeCount(fileContent), radicals: getAllRadicals(fileContent));
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
