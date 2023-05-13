import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:database_builder/database_builder.dart';
import 'package:isar/isar.dart';



Future<bool> kradToIsar(Isar isar) async {

  List<Krad> entries = <Krad>[];

  // read radical definitions
  Map radicals = getRadicals()["radicals"];
  for (MapEntry radicalDef in radicals.entries) {
    Krad krad = Krad(
      character: radicalDef.key,
      kanjis: List<String>.from(radicalDef.value["kanji"]),
      strokeCount: radicalDef.value["strokeCount"],
    );
    entries.add(krad);
  }

  isar.writeTxn(() async {
    isar.krads.putAll(entries);
  });
  print(isar.krads.countSync());

  return true;

}

/// parses the KRADFILE into a list of lists
Map getRadicals(){

  return jsonDecode(
    File(
      p.join(RepoPathManager.getInputFilesPath(), "radkfile-3.5.0.json")
    ).readAsStringSync()
  );

}