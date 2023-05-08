import 'dart:io';
import 'package:path/path.dart' as p;

import 'package:isar/isar.dart';
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

  
  List<JMdict> addedAccents = [];
  for (var row in accentRows) {

    List<JMdict> matches = dictIsar.jmdict.where()
      .kanjisElementEqualTo(row[0])
    .filter()
      .readingsElementEqualTo(row[1])
    .findAllSync();

    for (var match in matches) {
      match.accents ??= List.generate(match.readings.length, (index) => null);
      
      match.accents![match.readings.indexOf(row[1])] = 
        JMDictAttribute(
          attributes: row[2].toString().split(",")
        );

      dictIsar.writeTxnSync(() {
        dictIsar.jmdict.putSync(match);
      });
    }
  }

  dictIsar.writeTxnSync(() {
    dictIsar.jmdict.putAllSync(addedAccents);
  });
}