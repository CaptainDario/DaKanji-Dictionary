import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:kana_kit/kana_kit.dart';
import 'package:path/path.dart' as p;

import 'package:database_builder/database_builder.dart';
import 'package:isar/isar.dart';



/// Iterates over all entries in the given `items` and resolves the ID
/// references in the fields `xref` and `antonyms` to the actual IDs
void resolveReferences(List<JMdict> items, Map map) {

  for (JMdict item in items) {
    for (LanguageMeanings meaning in item.meanings) {
      if(meaning.xref != null) {
        for (int i = 0; i < meaning.xref!.length; i++) {
          if (meaning.xref![i] == null) continue;

          List<String?> parsedXrefs = <String>[];
          for (String? subXref in  meaning.xref![i]!.attributes){

            if(subXref == null) {
              parsedXrefs.add(null);
            }
            else{
              String xref = subXref.split("・")[0];
              parsedXrefs.add(map[xref].toString());
            }
          }
          meaning.xref![i]!.attributes = parsedXrefs;
        }
      }
      if(meaning.antonyms != null){
        for (int i = 0; i < meaning.antonyms!.length; i++) {
          if (meaning.antonyms![i] == null) continue;
          List<String?> parsedAnts = <String>[];
          for (String? subAnt in  meaning.antonyms![i]!.attributes){

            if(subAnt == null) {
              parsedAnts.add(null);
            }
            else{
              String ant = subAnt.split("・")[0];
              parsedAnts.add(map[ant].toString());
            }
          }
          meaning.antonyms![i]!.attributes = parsedAnts;
        }
      }
    }
  }

}

List<LanguageMeaningsAttribute?>? JsonToLanguageMeaningAttribute(List jsonAttributes){

  List<LanguageMeaningsAttribute?> attributes = List.filled(jsonAttributes.length, null);

  // if there are no attributes, return null
  if(jsonAttributes.every((e) => e == null)) return null;

  for (int i = 0; i < jsonAttributes.length; i++) {
    if(jsonAttributes[i] == null){
      attributes[i] = null;
    }
    else{
      attributes[i] = LanguageMeaningsAttribute(
        attributes: List<String?>.from(jsonAttributes[i])
      );
    }
  }

  return attributes;

}

List<T> dictJsonToList<T>(List dict) {
  List<T> entries = <T>[];
  Map<String, Id> map = HashMap();
  KanaKit k = KanaKit();

  for (final jsonEntry in dict) {
    List<LanguageMeanings> meanings = <LanguageMeanings>[];

    int cnt = 0;
    for (var jsonMeaning in jsonEntry["meanings"]) {

      int listEnd = cnt + jsonMeaning["meanings"].length as int;

      LanguageMeanings lM = LanguageMeanings(
        language: jsonMeaning["language"],
        meanings: List<String>.from(jsonMeaning["meanings"]),
        
        senseKanjiTarget: JsonToLanguageMeaningAttribute(jsonEntry["stagk"].sublist(cnt, listEnd)),
        senseReadingTarget: JsonToLanguageMeaningAttribute(jsonEntry["stagr"].sublist(cnt, listEnd)),
        xref: JsonToLanguageMeaningAttribute(jsonEntry["xref"].sublist(cnt, listEnd)),
        antonyms: JsonToLanguageMeaningAttribute(jsonEntry["ant"].sublist(cnt, listEnd)),
        partOfSpeech: JsonToLanguageMeaningAttribute(jsonEntry["pos"].sublist(cnt, listEnd)),
        field: JsonToLanguageMeaningAttribute(jsonEntry["fld"].sublist(cnt, listEnd)),
        source: JsonToLanguageMeaningAttribute(jsonEntry["lsource"].sublist(cnt, listEnd)),
        dialect: JsonToLanguageMeaningAttribute(jsonEntry["dial"].sublist(cnt, listEnd)),
        senseInfo: JsonToLanguageMeaningAttribute(jsonEntry["s_inf"].sublist(cnt, listEnd)),
      );
      meanings.add(lM);
      cnt = listEnd;
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
    }
    else if (T == JMdict) {
      // add the readings / kanjis to the map to later resolve the references
      kanjis.forEach((element) {
        map[element] = id;
      });
      readings.forEach((element) {
        map[element] = id;
      });

      entries.add(JMdict(
        id: id,

        frequency: jsonEntry["frequency"],

        kanjis: kanjis,
        kanjiInfo: (jsonEntry["k_inf"]).any((e) => e != null) ?
          List<String?>.from(jsonEntry["k_inf"]) : null,

        readings: readings,
        readingInfo: (jsonEntry["re_inf"]).any((e) => e != null) ?
          List<String?>.from(jsonEntry["re_inf"]) : null,
        readingRestriction: jsonEntry["re_restr"].any((e) => e != null) ?
          List<String?>.from(jsonEntry["re_restr"]) : null,
        hiraganas: readings.map((e) => k.toHiragana(e)).toList(),
        
        meanings: meanings,
        
      ) as T);
    }
  }

  if (T == JMdict){
    resolveReferences(entries as List<JMdict>, map);
  }

  return entries;
}

/// Extracts the meanings of the language given by `iso639_2T` from the
/// dictionary `wholeDict` and returns a json map with the id of the JMdict
/// entry as key and the meaning as value.
Map<String, String> jmListToMeaningJson(List<JMdict> wholeDict, String iso639_2T){
  Map<String, String> dict = {};

  for (JMdict jm in wholeDict) {
    for (LanguageMeanings meaning in jm.meanings) {
      if(meaning.language == iso639_2T){
        dict[jm.id.toString()] = jsonEncode(meaning);
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
  Map meanings = jsonDecode(meaningsJson);

  for (var entry in meanings.entries) {
    JMdict jm = isar.jmdict.getSync(int.parse(entry.key))!;
    // update meanings in isar with new language
    jm.meanings = [
      ...jm.meanings.where((e) => e.language != iso639_2T).toList(),
      LanguageMeanings.fromJson(jsonDecode(entry.value))
    ];
    isar.writeTxnSync(() {
      isar.jmdict.putSync(jm);
    });
  }

}

void jmdictJsonToIsar(List dict, Isar isar, List<String> translationIso639_2T){
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
      File(
        p.joinAll([
          RepoPathManager.getOutputFilesPath(), "jmdict_json", "$iso.json"
        ])
      ).readAsStringSync(),
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
