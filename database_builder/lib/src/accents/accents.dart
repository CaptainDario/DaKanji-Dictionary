import 'dart:io';
import 'package:kana_kit/kana_kit.dart';
import 'package:path/path.dart' as p;

import 'package:isar_community/isar.dart';
import 'package:csv/csv.dart';

import 'package:database_builder/database_builder.dart';



/// Adds pitch accents to the given dictionary Isar
Future<void> addAccentsToDict(Isar dictIsar) async {

  String accentsFile = File(
      p.join(RepoPathManager.getInputFilesPath(), "accents.txt")
    ).readAsStringSync();

  List<List<dynamic>> accentRows =
    const CsvToListConverter(
      fieldDelimiter: "\t",
      eol: "\n",
    ).convert(accentsFile);

  
  KanaKit k = KanaKit(config:
    KanaKitConfig(passRomaji: true, passKanji: true, upcaseKatakana: false)
  );

  int i = 0; List<JMdict> updatedJmdicts = [];
  for (var row in accentRows) {
    String kanji = k.toHiragana(((row[1] == "" ? "" : row[0]) as String).toHalfWidth());
    String reading = k.toHiragana(((row[1] == "" ? row[0] : row[1]) as String).toHalfWidth());
    List<JMdict> matches = dictIsar.jmdict.where()
        .hiraganasElementEqualTo(reading)
      .filter()
        .optional(kanji != "", (q) => 
          q.kanjiIndexesElementEqualTo(kanji)
        )
      .findAllSync();

    for (var match in matches) {
      match.accents ??= List.generate(match.readings.length, (index) => null);
      
      match.accents![match.readings.map((e) => k.toHiragana(e)).toList().indexOf(reading)] = 
        JMDictAttribute(
          attributes: row[2].toString().split(",")
        );

      updatedJmdicts.add(match);
    }

    if(matches.isEmpty){
      print("No JMdict entry found for accent $i/${accentRows.length}: $kanji, $reading, ${row[2]}");
    }

    i++;
  }

}