import 'dart:collection';

import 'package:kana_kit/kana_kit.dart';

import 'data_classes.dart';
import 'package:isar/isar.dart';

List<JMdict> resolveReferences(List<JMdict_pre> items, Map map) {
  List<JMdict> jmdict = <JMdict>[];
  for (var item in items) {
    List<Id> xrefs = <Id>[];
    List<Id> re_infs = <Id>[];
    for (var xref in item.xref) {
      xref = xref.split("・")[0];
      xrefs.add(map[xref]);
    }
    jmdict.add(JMdict(
        id: item.id,
        kanjis: item.kanjis,
        meanings: item.meanings,
        romaji: item.romaji,
        partOfSpeech: item.partOfSpeech,
        readings: item.readings,
        frequency: item.frequency,
        field: item.field,
        dialect: item.dialect,
        xref: xrefs,
        re_inf: item.re_inf));
  }
  return jmdict;
}

List<T> dictJsonToList<T>(List dict) {
  List<T> entries = <T>[];
  List<JMdict_pre> jmdictPre = <JMdict_pre>[];
  Map<String, Id> map = HashMap();
  KanaKit k = KanaKit();

  for (final jsonEntry in dict) {
    List<LanguageMeanings> meanings = <LanguageMeanings>[];
    for (final jsonMeaning in jsonEntry["meanings"]) {
      meanings.add(LanguageMeanings(
          language: jsonMeaning["language"],
          meanings: List<String>.from(jsonMeaning["meanings"])));
    }

    Id id = jsonEntry["ent_seq"];
    List<String> kanjis = List<String>.from(jsonEntry["kanjis"]);
    List<String> readings = List<String>.from(jsonEntry["readings"]);
    List<String> partOfSpeech = List<String>.from(jsonEntry["part_of_speech"]);

    if (T == JMNEdict) {
      entries.add(JMNEdict(
          id: id,
          kanjis: kanjis,
          meanings: meanings,
          partOfSpeech: partOfSpeech,
          readings: readings) as T);
    } else if (T == JMdict) {
      kanjis.forEach((element) {
        map[element] = id;
      });
      readings.forEach((element) {
        map[element] = id;
      });

      jmdictPre.add(JMdict_pre(
          id: id,
          kanjis: kanjis,
          meanings: meanings,
          romaji: readings.map((e) => k.toRomaji(e)).toList(),
          partOfSpeech: partOfSpeech,
          readings: readings,
          frequency: jsonEntry["frequency"],
          field: List<String>.from(jsonEntry["fld"]),
          dialect: List<String>.from(jsonEntry["dial"]),
          xref: List<String>.from(jsonEntry["xref"]),
          re_inf: List<String>.from(jsonEntry["re_inf"])));
    }
  }

  if (T == JMdict){
    entries = resolveReferences(jmdictPre, map) as List<T>;
  }
  return entries;
}

void jsonToIsar<T>(List dict, Isar isar) {
  isar.writeTxnSync(() {
    if (T == JMdict) {
      isar.jmdict.putAllSync(dictJsonToList<JMdict>(dict), saveLinks: true);
    }
    if (T == JMNEdict) {
      isar.jmnedict.putAllSync(dictJsonToList<JMNEdict>(dict), saveLinks: true);
    }
  });
}
