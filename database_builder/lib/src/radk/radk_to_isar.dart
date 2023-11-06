import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:database_builder/database_builder.dart';
import 'package:isar/isar.dart';



Future<bool> radkToIsar(Isar isar) async {

  List<Radk> entries = <Radk>[];

  // read radical definitions
  Map radicals = parseRadkFile();
  for (MapEntry radicalDef in radicals.entries) {
    Radk radk = Radk(
      radical: radicalDef.key,
      kanjis: List<String>.from(radicalDef.value["kanji"]),
      radicalStrokeCount: radicalDef.value["strokeCount"],
    );
    entries.add(radk);
  }

  isar.writeTxnSync(() {
    isar.radks.putAllSync(entries);
  });
  print(isar.radks.countSync());

  return true;

}

/// parses the RADKFILE into a list of lists
Map parseRadkFile(){

  return jsonDecode(
    File(
      p.join(RepoPathManager.getPartiallyProcessedFilesPath(), "radicals", "radk.json")
    ).readAsStringSync()
  );

}