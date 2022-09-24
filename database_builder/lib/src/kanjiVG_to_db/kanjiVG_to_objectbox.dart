import 'dart:io';
import 'package:database_builder/database_builder.dart';
import 'package:path/path.dart' as p;


Future<bool> kanjiVGToObjectbox() async {
    var dbName = 'kanji_SVG';
    final store = openStore();
    final Box<KanjiSVG> box = store.box<KanjiSVG>();

    if (box.count() <= 0)
    {
      Stopwatch stopwatch = Stopwatch()..start();
      Directory dir = Directory(p.join(RepoPathManager.getPartiallyProcessedFilesPath(), 'kanjiVG'));
      List<KanjiSVG> kanjis = <KanjiSVG>[];
      await for (var file in dir.list()){
        if (file is File && !file.path.contains(".gitkeep")) {
          String character = String.fromCharCode(int.parse(p.basenameWithoutExtension(file.path).substring(0, 5), radix: 16));
          var fileContent = (file).readAsStringSync();
          var kanjiSVG = KanjiSVG(
            character: character,
            svg: fileContent);
          kanjis.add(kanjiSVG);
        }
      }
      box.putMany(kanjis);
      print('${stopwatch.elapsed}');
    }
    print(dbName + ": " + "Data inserted into box, closing - please wait");
    store.close();
    return Future<bool>.value(false);
}
