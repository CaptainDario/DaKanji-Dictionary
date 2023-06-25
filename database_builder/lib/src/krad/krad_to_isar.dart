import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:database_builder/database_builder.dart';
import 'package:isar/isar.dart';



Future<bool> kradToIsar(Isar isar) async {

  List<Krad> entries = <Krad>[];

  // read radical definitions
  Map radicals = parseKradFile();
  for (MapEntry kanjiDef in radicals.entries) {
    Krad krad = Krad(
      kanji: kanjiDef.key,
      radicals: List<String>.from(kanjiDef.value),
    );
    entries.add(krad);
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