import 'dart:io';
import 'dart:convert';
import 'dataClasses.dart';
import 'jsonToHive.dart';
import 'package:hive/hive.dart';
import '../utils/repo_path_manager.dart';
import 'package:path/path.dart' as p;


void jmEnamAndDictToHive() async {
    Hive
      ..init(RepoPathManager.getOutputFilesPath())
      ..registerAdapter(EntryAdapter())
      ..registerAdapter(LanguageMeaningsAdapter());
    var boxName = 'jm_enam_and_dict';

    var box = await Hive.openBox(boxName);

    // box.values.where((entry) => entry.readings.contains('あら') ? true : false)
    // not working : box.values.where((entry) => entry.readings.where((reading) => (reading.language == "eng") & (reading.meaning == "hello")) ? true : false)
    if (box.isEmpty)
    {
      Stopwatch stopwatch = Stopwatch()..start();
      List data = jsonDecode(await File(p.join(RepoPathManager.getPartiallyProcessedFilesPath(), 'mergedDicts.json')).readAsString());
      jsonToHive(data, box);
      print('${stopwatch.elapsed}');
    }
    
    for (final entry in box.values)
    {
      for (final meaning in entry.meanings)
      {
        if(meaning.language == "eng" && meaning.meanings.contains("hello"))
        {
          print(meaning);
        }
      }
    }
    print("Data inserted into box, closing - please wait");
    box.close();
    print("Final box size is: " + File(box.path!).lengthSync().toString());// box size
    print("Box closed");
}
