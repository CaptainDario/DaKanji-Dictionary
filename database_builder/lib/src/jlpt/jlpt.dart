import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p;

import 'package:database_builder/database_builder.dart';
import 'package:isar/isar.dart';



/// Adds pitch accents to the given dictionary Isar
Future<void> addJLPTToDict(Isar dictIsar) async {

  List<List> jlptData = [];

  for (int i = 1; i < 5; i++){
    String jlptFile = File(
      p.join(RepoPathManager.getInputFilesPath(), "jlpt", "term_meta_bank_$i.json")
    ).readAsStringSync();

    List json = jsonDecode(jlptFile);
    for (var entry in json){

      bool containsKanji = entry[2].containsKey("reading");

      jlptData.add([
        containsKanji ? entry[0] : null, // kanji if available
        containsKanji ? entry[2]["reading"] : entry[0], // hiragana
        (containsKanji
          ? entry[2]["frequency"]["displayValue"]
          : entry[2]["displayValue"]
        ).toString() // JLPT
      ]);
    }
  }
  
  for (List row in jlptData) {

    List<JMdict> matches = dictIsar.jmdict.where()
      .optional(row[0] != null, (q) => 
        q.kanjisElementEqualTo(row[0])
      )
    .filter()
      .readingsElementEqualTo(row[1])
    .findAllSync();

    for (JMdict match in matches) {

      List<String>? levels = List.from(match.jlptLevel ?? []);
      levels.add("${row[2]}");
      match.jlptLevel = levels.toSet().toList();
      
      dictIsar.writeTxnSync(() {
        dictIsar.jmdict.putSync(match);
      });
    }
  }

  
}