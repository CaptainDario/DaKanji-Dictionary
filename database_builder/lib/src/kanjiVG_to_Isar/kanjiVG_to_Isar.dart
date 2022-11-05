import 'dart:io';
import 'package:database_builder/database_builder.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as p;


Future<bool> kanjiVGToIsar(Isar isar) async {
// Future<bool> main() async{
    var dbName = 'kanji_SVG';
    print("Starting kanjiVg");
    // final isar = await Isar.open([KanjiSVGSchema]);
    
    // print(await isar.getSize());
    
    if (isar.kanjiSVGs.countSync() <= 0)
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
      await isar.writeTxn(() => isar.kanjiSVGs.putAll(kanjis));
      // isar.kanjiSVGs.putAll(kanjis);
    //   box.putMany(kanjis);
      print('${stopwatch.elapsed}');
    }
    print("kanjiVg finished");
    // // print(dbName + ": " + "Data inserted into box, closing - please wait");
    return Future<bool>.value(false);
}
