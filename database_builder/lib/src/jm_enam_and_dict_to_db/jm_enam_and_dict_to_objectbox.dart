import 'dart:io';
import 'dart:convert';
import 'package:database_builder/database_builder.dart';
import 'json_to_objectbox.dart';
import 'package:path/path.dart' as p;


Future<bool> jmEnamAndDictToObjectbox() async {
    var dbName = 'jm_enam_and_dict';
    final store = openStore();
    final Box<Entry> box = store.box<Entry>();

    if(box.count() <= 0){
        print("Starting stopwatch");
        Stopwatch stopwatch = Stopwatch()..start();
        print("Starting reading json");
        List data = jsonDecode(await File(p.join(RepoPathManager.getPartiallyProcessedFilesPath(), 'JMdict', 'mergedDicts.json')).readAsString());
        print("Json read, putting objects to box");
        jsonToObjectbox(data, box);
        print('${stopwatch.elapsed}');
    }

    print(dbName + ": " + "Data inserted into box, closing - please wait");
    store.close();
    print(dbName + ": " + "Box closed");
    return Future<bool>.value(false);
}
