import 'data_classes.dart';
import 'package:isar/isar.dart';

List<T> dictJsonToList<T>(List dict){
  List<T> entries = <T>[];
  for (final jsonEntry in dict){
    var jsonMeanings = jsonEntry["meanings"];
    var meanings = <LanguageMeanings>[];
    for (final jsonMeaning in jsonMeanings){
      meanings.add(LanguageMeanings(language: jsonMeaning["language"], 
                                    meanings: List<String>.from(jsonMeaning["meanings"])));
    }
    if (T == JMNEdict){
      entries.add(
        JMNEdict(
          kanjis: List<String>.from(jsonEntry["kanjis"]), 
          meanings: meanings,
          partOfSpeech: List<String>.from(jsonEntry["part_of_speech"]), 
          readings: List<String>.from(jsonEntry["readings"])) as T
      );
    }
    else if (T == JMdict){
      entries.add(
        JMdict(
          kanjis: List<String>.from(jsonEntry["kanjis"]), 
          meanings: meanings,
          partOfSpeech: List<String>.from(jsonEntry["part_of_speech"]), 
          readings: List<String>.from(jsonEntry["readings"]),
          frequency: jsonEntry["frequency"]) as T
      );
    }
  }
  return entries;
}

void jsonToIsar<T>(List dict, Isar isar){
  isar.writeTxnSync(()  {
    if(T == JMdict) isar.jmdict.putAllSync(dictJsonToList<JMdict>(dict), saveLinks: true);
    if(T == JMNEdict) isar.jmnedict.putAllSync(dictJsonToList<JMNEdict>(dict), saveLinks: true);
  });
}