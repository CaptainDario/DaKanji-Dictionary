import 'dataClasses.dart';
import 'package:hive/hive.dart';

void jsonToHive(List data, Box<dynamic> box){
  for (int i = 0; i < data.length; i++)
  {
    var jsonEntry = data[i];
    jsonEntry["kanjis"];
    jsonEntry["readings"];
    jsonEntry["part_of_speech"];
    var jsonMeanings = jsonEntry["meanings"];
    var meanings = <LanguageMeanings>[];
    for (int j = 0; j < jsonMeanings.length; j++)
    {
      meanings.add(LanguageMeanings(language: jsonMeanings[j]["language"], 
                                    meanings: List<String>.from(jsonMeanings[j]["meanings"])));
    }
    var entry = Entry(
      kanjis: List<String>.from(jsonEntry["kanjis"]), 
      meanings: meanings, 
      partOfSpeech: List<String>.from(jsonEntry["part_of_speech"]), 
      readings: List<String>.from(jsonEntry["readings"]));
    box.add(entry);
  }
}