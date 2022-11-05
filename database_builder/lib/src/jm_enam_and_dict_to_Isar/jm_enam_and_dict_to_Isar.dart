import 'dart:io';
import 'dart:convert';
import 'package:database_builder/database_builder.dart';
import 'json_to_Isar.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as p;

// Future<bool> main() async {
Future<bool> jmEnamAndDictToIsar(Isar isar) async {
    var dbName = 'jm_enam_and_dict';
    // final isar = await Isar.open([EntrySchema]);
  
    if (isar.entrys.countSync() <= 0)
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
    // isar.entrys.filter().meaningsElement((LanguageMeanings) => LanguageMeanings.meaningsElementContains("eat")).findFirstSync(); // bad - it returns something like mEAT
    // isar.entrys.filter().meaningsElement((LanguageMeanings) => LanguageMeanings.meaningsElementStartsWith("eat")) // good - it returns eat
    // .and().meaningsElement((q) => q.languageEqualTo("ger")).findFirstSync();
    isar.entrys.filter()
      .meaningsElementStartsWith("eat")
    .findAllSync().toString();
    print(dbName + ": " + "Box closed");
    return Future<bool>.value(false);
}
