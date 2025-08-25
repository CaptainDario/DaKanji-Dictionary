import 'dart:io';
import 'dart:convert';
import 'package:database_builder/database_builder.dart';
import 'json_to_Isar.dart';
import 'package:isar_community/isar.dart';
import 'package:path/path.dart' as p;

// Future<bool> main() async {
Future<bool> kanjidic2ToIsar(Isar isar) async {
  var dbName = 'kanjidic2';
  // final isar = await Isar.open([Kanjidic2EntrySchema]);

  if (isar.kanjidic2s.countSync() <= 0) {
    Stopwatch stopwatch = Stopwatch()..start();
    List data = jsonDecode(await File(p.join(
            RepoPathManager.getPartiallyProcessedFilesPath(),
            'kanjidic2',
            'kanjidic2.json'))
        .readAsString());
    jsonToIsar(data, isar);
    print('${stopwatch.elapsed}');
  }
  isar.kanjidic2s.filter().frequencyBetween(0, 100).findAllSync().toList();
  print(dbName + ": " + "Data inserted into box, closing - please wait");
  print(dbName + ": " + "Box closed");
  return Future<bool>.value(false);
}
