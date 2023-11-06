import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:database_builder/database_builder.dart';
import 'package:isar/isar.dart';



Future<bool> kradToIsar(Isar isar, IsarCollection<Kanjidic2> kanjidirIsar) async {

  List<Krad> entries = <Krad>[];

  // read radical definitions
  Map radicals = parseKradFile();
  for (MapEntry kanjiDef in radicals.entries) {

    List<Kanjidic2> kanjidicEntry = kanjidirIsar.where()
      .characterEqualTo(kanjiDef.key)
    .findAllSync();

    if(kanjidicEntry.length == 1){
      Krad krad = Krad(
        kanji: kanjiDef.key,
        radicals: List<String>.from(kanjiDef.value),
        kanjiStrokeCount: kanjidicEntry.first.strokeCount
      );
      entries.add(krad);
    }
    else{
      print("$kanjidicEntry has ${kanjidicEntry.length} matches, skipping...");
    }
  }

  isar.writeTxnSync(()  {
    isar.krads.putAllSync(entries);
  });
  print(isar.krads.countSync());

  return true;

}

/// parses the KRADFILE into a list of lists
Map parseKradFile(){

  return jsonDecode(
    File(
      p.join(RepoPathManager.getPartiallyProcessedFilesPath(), "radicals", "krad.json")
    ).readAsStringSync()
  );

}