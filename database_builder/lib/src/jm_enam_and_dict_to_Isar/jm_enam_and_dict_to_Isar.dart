import 'dart:io';
import 'dart:convert';
import 'package:database_builder/database_builder.dart';
import 'package:database_builder/src/jm_enam_and_dict_to_Isar/data_classes.dart';
import 'json_to_Isar.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as p;

Future<bool> main() async {
// Future<bool> jmEnamAndDictToObjectbox() async {
    var dbName = 'jm_enam_and_dict';
    final isar = await Isar.open([EntrySchema, LanguageMeaningsSchema]);
    // final store = openStore();
    // final Box<Entry> box = store.box<Entry>();
    if (isar.getSizeSync() <= 0)
    {
        print("Starting stopwatch");
        Stopwatch stopwatch = Stopwatch()..start();
        print("Starting reading json");
        List data = jsonDecode(await File(p.join(RepoPathManager.getPartiallyProcessedFilesPath(), 'JMdict', 'mergedDicts.json')).readAsString());
        print("Json read, putting objects to box");
        jsonToIsar(data, isar);
        print('${stopwatch.elapsed}');
    }

    print(dbName + ": " + "Data inserted into box, closing - please wait");
    // HERE IS THE EXAMPLE QUERY
    //isar.entrys.filter().meanings((LanguageMeanings) => LanguageMeanings.meaningsElementContains("city")).findFirstSync();
    print(dbName + ": " + "Box closed");
    return Future<bool>.value(false);
}
