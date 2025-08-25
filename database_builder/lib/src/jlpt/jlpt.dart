import 'dart:convert';
import 'dart:io';
import 'package:kana_kit/kana_kit.dart';
import 'package:path/path.dart' as p;

import 'package:csv/csv.dart';
import 'package:database_builder/database_builder.dart';
import 'package:isar_community/isar.dart';



/// Adds pitch accents to the given dictionary Isar
Future<void> addJLPTToDict(Isar dictIsar) async {

  List<List> jlptData = [];

  for (int i = 1; i < 6; i++){
    String jlptFile = File(
      p.join(RepoPathManager.getInputFilesPath(), "jlpt", "n$i.csv")
    ).readAsStringSync();

    // 
    List<dynamic> jlptRows =
      const CsvToListConverter(
        fieldDelimiter: "\t",
        eol: "\n",
      ).convert(jlptFile);
    List<List<String>> jlptRowsSplit = jlptRows
      .map((e) => (e[0] as String).split(",")).toList();
    

    for (List row in jlptRowsSplit) {
      if(row[0] == "jmdict_seq" || row[0] == "" || row[row.length-2] == "jmdict"){
        continue;
      }

      List<JMdict> entries = dictIsar.jmdict.where()
        .idEqualTo(int.parse(row[0]))
      .findAllSync();

      if(entries.length != 1){
        entries = dictIsar.jmdict.filter()
          .kanjiIndexesElementEqualTo(row[1])
            .and()
          .group((q) => 
            q.hiraganasElementEqualTo(row[2])
              .or()
            .readingsElementEqualTo(row[2], caseSensitive: false)
          )
        .findAllSync();
      }

      JMdict entry = entries.first;

      entry.jlptLevel ??= [];
      entry.jlptLevel = List.from(entry.jlptLevel!)..add("N$i (${row[1] != '' ? row[1] : row[2]})");

      dictIsar.writeTxnSync(() {
        dictIsar.jmdict.putSync(entry);
      });
    }

    print("Added JLPT N$i word info");
  }
  
}