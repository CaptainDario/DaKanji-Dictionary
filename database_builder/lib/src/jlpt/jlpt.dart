import 'dart:convert';
import 'dart:io';
import 'package:kana_kit/kana_kit.dart';
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

    // read json file
    List json = jsonDecode(jlptFile);
    KanaKit k = KanaKit(config: 
      KanaKitConfig(passRomaji: true, passKanji: true, upcaseKatakana: false)
    );
    for (var entry in json){

      bool containsKanji = entry[2].containsKey("reading");

      jlptData.add([
        containsKanji ? (entry[0]).toString().toHalfWidth() : null, // kanji if available
        k.toHiragana(containsKanji ? entry[2]["reading"] : entry[0]), // hiragana
        (containsKanji
          ? entry[2]["frequency"]["displayValue"]
          : entry[2]["displayValue"]
        ).toString() // JLPT
      ]);
    }
  }
  
  //add jlpt data to the matching ISAR entry
  int i = 0;
  for (List row in jlptData) {

    List<JMdict> matches = dictIsar.jmdict.where()
      .optional(row[0] != null, (q) => 
        q.kanjiIndexesElementEqualTo(row[0])
      )
    .filter()
      .hiraganasElementEqualTo(row[1])
    .findAllSync();

    for (JMdict match in matches) {

      List<String>? levels = List.from(match.jlptLevel ?? []);
      levels.add("${row[2]}");
      match.jlptLevel = levels.toSet().toList();
      
      dictIsar.writeTxnSync(() {
        dictIsar.jmdict.putSync(match);
      });
    }
    if(matches.isEmpty){
      print("No JMdict entry found for JLPT $i/${jlptData.length}: $row");
    }
    i++;
  }

  
}