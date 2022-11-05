import 'data_classes.dart';
import 'package:isar/isar.dart';

void jsonToIsar(List data, Isar isar){
  List<Kanjidic2Entry> entries = <Kanjidic2Entry>[];
  for(final jsonEntry in data){
    List<JIS> variants = jsonEntry["variants"].map<JIS>((variant){
      return JIS(encoding: variant["encoding"], value: variant["value"]);
    }).toList();
    List<Reading> readings = jsonEntry["readings"].map<Reading>((reading){
      return Reading(r_type: reading["r_type"], value: reading["value"]);
    }).toList();
    List<Meaning> meanings = jsonEntry["meanings"].map<Meaning>((meaning){
      return Meaning(language: meaning["language"], meaning: meaning["meaning"]);
    }).toList();
    List<String> nanoris = List.from(jsonEntry["nanoris"]);
    var entry = Kanjidic2Entry(literal: jsonEntry["literal"], grade: jsonEntry["grade"], frequency: jsonEntry["frequency"],
                  jlpt: jsonEntry["jlpt"], nanoris: nanoris);
    entry.variants.addAll(variants);
    entry.readings.addAll(readings);
    entry.meanings.addAll(meanings);

    entries.add(entry);
  }
  isar.writeTxnSync(()  {
    isar.kanjidic2Entrys.putAllSync(entries, saveLinks: true);
  });

}