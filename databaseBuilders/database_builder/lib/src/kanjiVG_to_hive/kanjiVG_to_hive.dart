import 'dart:io';
import 'package:database_builder/database_builder.dart';
import 'package:hive/hive.dart';
import 'kanji_SVG_dataclasses.dart';
import 'package:xml/xml.dart';
import 'package:path/path.dart' as p;


void putToBox(FileSystemEntity file, Box box){
  if (file is File) {
    String character = String.fromCharCode(int.parse(p.basenameWithoutExtension(file.path).substring(0, 5), radix: 16));
    var fileContent = (file).readAsStringSync();
    var kanjiSVG = KanjiSVG(
      SVG: fileContent);
    box.put(character, kanjiSVG);
  }
}

Future<bool> kanjiVGToHive() async {
    Hive
      ..init(RepoPathManager.getOutputFilesPath())
      ..registerAdapter(KanjiSVGAdapter());
    var boxName = 'kanji_SVG';

    var box = await Hive.openBox(boxName);
    if (box.isEmpty)
    {
      Stopwatch stopwatch = Stopwatch()..start();
      Directory dir = Directory(p.join(RepoPathManager.getPartiallyProcessedFilesPath(), 'kanjiVG'));
      await dir.list().forEach((element) {putToBox(element, box);});
      print('${stopwatch.elapsed}');
    }
    print(boxName + ": " + "Data inserted into box, closing - please wait");
    print(box.values.length);
    await box.compact();
    await box.close();
    return Future<bool>.value(false);
}