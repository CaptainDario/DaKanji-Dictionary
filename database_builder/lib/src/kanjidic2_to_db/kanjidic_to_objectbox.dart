import 'dart:io';
import 'dart:convert';
import 'package:database_builder/database_builder.dart';
import 'json_to_objectbox.dart';
import 'package:path/path.dart' as p;


Future<bool> kanjidic2ToObjectbox() async {
    var dbName = 'kanjidic2';
    final store = openStore();
    final Box<Kanjidic2Entry> box = store.box<Kanjidic2Entry>();

    if (box.count() <= 0)
    {
      Stopwatch stopwatch = Stopwatch()..start();
      List data = jsonDecode(await File(p.join(RepoPathManager.getPartiallyProcessedFilesPath(), 'kanjidic2', 'kanjidic2.json')).readAsString());
      jsonToObjectbox(data, box);
      print('${stopwatch.elapsed}');
    }
    
    print(dbName + ": " + "Data inserted into box, closing - please wait");
    store.close();
    print(dbName + ": " + "Box closed");
    return Future<bool>.value(false);
}
