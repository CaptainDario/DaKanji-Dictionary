import 'data_classes.dart';
import 'package:isar/isar.dart';

void jsonToIsar(List data, Isar isar) {
  List<Kanjidic2> entries = <Kanjidic2>[];
  for (final jsonEntry in data) {
    List<JIS> variants = jsonEntry["variants"].map<JIS>((variant) {
      return JIS(encoding: variant["encoding"], value: variant["value"]);
    }).toList();
    List<Reading> readings = jsonEntry["readings"].map<Reading>((reading) {
      return Reading(rType: reading["r_type"], value: reading["value"]);
    }).toList();
    List<Meaning> meanings = jsonEntry["meanings"].map<Meaning>((meaning) {
      return Meaning(
          language: meaning["language"], meaning: meaning["meaning"]);
    }).toList();
    List<String> nanoris = List.from(jsonEntry["nanoris"]);
    var entry = Kanjidic2(
      character:   jsonEntry["literal"],
      grade:       jsonEntry["grade"],
      frequency:   jsonEntry["frequency"],
      strokeCount: jsonEntry["stroke_count"],
      jlptOld:     jsonEntry["jlpt_old"],
      jlptNew:     jsonEntry["jlpt_new"],
      klc:         jsonEntry["klc"],
      wanikani:    jsonEntry["wanikani"],
      rtkOld:      jsonEntry["rtk_old"],
      rtkNew:      jsonEntry["rtk_new"],
      antonyms:    (jsonEntry["antonyms"] as List?)?.map((e) => e as String).toList(),
      synonyms:    (jsonEntry["synonyms"] as List?)?.map((e) => e as String).toList(),
      lookalikes:  (jsonEntry["lookalikes"] as List?)?.map((e) => e as String).toList(),
      kanken:      jsonEntry["kanken"],
      nanoris:     nanoris
    );
    entry.variants.addAll(variants);
    entry.readings.addAll(readings);
    entry.meanings.addAll(meanings);

    entries.add(entry);
  }
  isar.writeTxnSync(() {
    isar.kanjidic2s.putAllSync(entries, saveLinks: true);
  });
}
