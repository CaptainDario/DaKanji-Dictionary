import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:kana_kit/kana_kit.dart';
import 'package:path/path.dart' as p;

import 'package:database_builder/database_builder.dart';
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
      meanings.add(
        LanguageMeanings(
          language: jsonMeaning["language"],
          meanings: List<String>.from(jsonMeaning["meanings"])
        )
      );
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
        re_inf: List<String>.from(jsonEntry["re_inf"])
      ));
    }
  }

  if (T == JMdict){
    entries = resolveReferences(jmdictPre, map) as List<T>;
  }
  return entries;
}

/// Extracts the meanings of the language given by `iso639_2T` from the
/// dictionary `wholeDict` and returns a json map with the id of the JMdict
/// entry as key and the meaning as value.
Map<String, List<String>> jmListToMeaningJson(List<JMdict> wholeDict, String iso639_2T){
  Map<String, List<String>> dict = {};

  for (JMdict jm in wholeDict) {
    for (LanguageMeanings meaning in jm.meanings) {
      if(meaning.language == iso639_2T){
        dict[jm.id.toString()] = meaning.meanings!;
      }
    }
  }

  return dict;
}

/// Adds the language in `meaningsJson` to the Isar instance `isar` with the
/// language code `iso639_2T`.
/// 
/// Caution: The Isar instance `isar` is expected to already have entries
/// for each meaning that should be added.
void addLanguageToJMIsar(String meaningsJson, String iso639_2T, Isar isar){

  // convert the json string to a Map<String, List<String>>
  Map<int, List<String>> meanings =
    (jsonDecode(meaningsJson) as Map<String, dynamic>)
      .map((key, value) => MapEntry(int.parse(key), List<String>.from(value)));

  for (var entry in meanings.entries) {
    JMdict jm = isar.jmdict.getSync(entry.key)!;
    // update meanings in isar with new language
    jm.meanings = [
      ...jm.meanings.where((e) => e.language != iso639_2T).toList(),
      LanguageMeanings(language: iso639_2T, meanings: entry.value)
    ];
    isar.writeTxnSync(() {
      isar.jmdict.putSync(jm);
    });
  }

}

jmdictJsonToIsar(List dict, Isar isar, List<String> translationIso639_2T){
  // get the whole dictionary as list of JMdict
  List<JMdict> wholeDict = dictJsonToList<JMdict>(dict);
  
  /// create language specific jsons
  for (var iso in translationIso639_2T) {
    File(p.joinAll([RepoPathManager.getOutputFilesPath(), "jmdict_json", "$iso.json"]))
      ..createSync(recursive: true)
      ..writeAsStringSync(jsonEncode(jmListToMeaningJson(wholeDict, iso)));
  }

  // extract the dictionary with ONLY english meanings
  List<JMdict> emptyDict = []; Set<String> langs = {};
  for (JMdict jm in wholeDict) {
    for (LanguageMeanings meaning in jm.meanings) {
      if(meaning.language == "eng"){
        emptyDict.add(jm..meanings = []);
      }
      langs.add(meaning.language!);
    }
  }
  print("Languages available in JM: $langs");

  /// add base dictionary to isar (has no translations)
  isar.writeTxnSync(() {
     isar.jmdict.putAllSync(emptyDict, saveLinks: true);
  });
  

  /// add selected languages
  stdout.write("Added: ");
  for (var iso in translationIso639_2T) {
    addLanguageToJMIsar(
      File(p.joinAll([RepoPathManager.getOutputFilesPath(), "jmdict_json", "$iso.json"])).readAsStringSync(),
      iso, isar
    );
    stdout.write("$iso, ");
  }
  stdout.write("\n");
}

/// Converts the json dictionary to a list of JMdict objects and adds them to
/// the given `isar` instance.
/// translationIso639_2T is a list of iso639_2T codes of languages that should be
/// added to the JMdict entries.
void jsonToIsar<T>(List dict, Isar isar, List<String> translationIso639_2T) {
  
    if (T == JMdict) {
      jmdictJsonToIsar(dict, isar, translationIso639_2T);
    }
    if (T == JMNEdict) {
      isar.writeTxnSync(() {
        isar.jmnedict.putAllSync(dictJsonToList<JMNEdict>(dict), saveLinks: true);
      });
    }
}
