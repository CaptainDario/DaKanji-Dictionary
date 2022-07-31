import 'dart:io';
import 'dart:convert';
import 'dataClasses.dart';
import 'package:hive/hive.dart';
import '../utils/repo_path_manager.dart';
import 'package:path/path.dart' as p;
import 'jsonToHive.dart';


Future<bool> kanjidic2ToHive() async {
    Hive
      ..init(RepoPathManager.getOutputFilesPath())
      ..registerAdapter(EntryAdapter())
      ..registerAdapter(JISAdapter())
      ..registerAdapter(ReadingAdapter())
      ..registerAdapter(MeaningAdapter());
    var boxName = 'kanjidic2';

    var box = await Hive.openBox(boxName);

    if (box.isEmpty)
    {
      Stopwatch stopwatch = Stopwatch()..start();
      List data = jsonDecode(await File(p.join(RepoPathManager.getPartiallyProcessedFilesPath(), 'kanjidic2', 'kanjidic2.json')).readAsString());
      jsonToHive(data, box);
      print('${stopwatch.elapsed}');
    }
    
    print("Data inserted into box, closing - please wait");
    box.close();
    print("Final box size is: " + File(box.path!).lengthSync().toString());// box size
    print("Box closed");
    return Future<bool>.value(false);
}
