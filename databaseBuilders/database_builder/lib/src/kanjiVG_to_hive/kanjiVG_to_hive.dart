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

void kanjiVGToHive() async {
    Hive
      ..init(RepoPathManager.getOutputFilesPath())
      ..registerAdapter(KanjiSVGAdapter());
    var boxName = 'kanji_SVG';

    var box = await Hive.openBox(boxName);
    box.clear();
    if (box.isEmpty)
    {
      Stopwatch stopwatch = Stopwatch()..start();
      Directory dir = Directory(p.join(RepoPathManager.getPartiallyProcessedFilesPath(), 'kanjiVG'));
      await dir.list().forEach((element) {putToBox(element, box);});
      print('${stopwatch.elapsed}');
    }
    print(box.values.length);
    // print(box.get("W"));
    await box.compact();
    await box.close();
}