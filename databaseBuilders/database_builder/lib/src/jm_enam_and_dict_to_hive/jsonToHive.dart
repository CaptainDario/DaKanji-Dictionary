import 'dataClasses.dart';
import 'package:hive/hive.dart';

void jsonToHive(List data, Box<dynamic> box){
  for (final jsonEntry in data){
    jsonEntry["kanjis"];
    jsonEntry["readings"];
    jsonEntry["part_of_speech"];
    var jsonMeanings = jsonEntry["meanings"];
    var meanings = <LanguageMeanings>[];
    for (final jsonMeaning in jsonMeanings){
      meanings.add(LanguageMeanings(language: jsonMeaning["language"], 
                                    meanings: List<String>.from(jsonMeaning["meanings"])));
    }
    var entry = Entry(
      kanjis: List<String>.from(jsonEntry["kanjis"]), 
      meanings: meanings, 
      partOfSpeech: List<String>.from(jsonEntry["part_of_speech"]), 
      readings: List<String>.from(jsonEntry["readings"]));
    box.add(entry);
  }
}