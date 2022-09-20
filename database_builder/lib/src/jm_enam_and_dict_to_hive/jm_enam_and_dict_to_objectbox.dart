import 'dart:io';
import 'dart:convert';
import '../../objectbox.g.dart';
import 'package:objectbox/objectbox.dart';

import 'dataClasses_objectbox.dart';
import 'jsonToObjectbox.dart';
import '../utils/repo_path_manager.dart';
import 'package:path/path.dart' as p;


// Future<bool> jmEnamAndDictToHive() async {
void main() async{
    var dbName = 'jm_enam_and_dict';
    // final store = 
    final store = openStore();
    final Box<Jm_enam_and_dict_Entry> box = store.box<Jm_enam_and_dict_Entry>();

    if(box.count() <= 0){
        print("Starting stopwatch");
        Stopwatch stopwatch = Stopwatch()..start();
        print("Starting reading json");
        List data = jsonDecode(await File(p.join(RepoPathManager.getPartiallyProcessedFilesPath(), 'JMdict', 'mergedDicts.json')).readAsString());
        print("Json read, putting objects to box");
        jsonToObjectbox(data, box);
        print('${stopwatch.elapsed}');
    }
    
    // box.values.where((entry) => entry.readings.contains('あら') ? true : false);
    // not working : box.values.where((entry) => entry.readings.where((reading) => (reading.language == "eng") & (reading.meaning == "hello")) ? true : false)
    // if (box.isEmpty)
    // {
    //   Stopwatch stopwatch = Stopwatch()..start();
    //   List data = jsonDecode(await File(p.join(RepoPathManager.getPartiallyProcessedFilesPath(), 'JMdict', 'mergedDicts.json')).readAsString());
    //   jsonToHive(data, box);
    //   print('${stopwatch.elapsed}');
    // }
    
    // for (final entry in box.values)
    // {
    //   for (final meaning in entry.meanings)
    //   {
    //     if(meaning.language == "eng" && meaning.meanings.contains("hello"))
    //     {
    //       print(meaning);
    //     }
    //   }
    // }
    print(dbName + ": " + "Data inserted into box, closing - please wait");
    store.close();
    // box.close();
    // print(dbName + ": " + "Final box size is: " + File(dbName.path!).lengthSync().toString());// box size
    print(dbName + ": " + "Box closed");
    // return Future<bool>.value(false);
}
