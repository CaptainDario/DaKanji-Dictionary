import 'package:database_builder/database_builder.dart';

void jsonToObjectbox(List data, Box<dynamic> box){
  List<Entry> entries = <Entry>[];
  for (final jsonEntry in data){
    var jsonMeanings = jsonEntry["meanings"];
    var meanings = <LanguageMeanings>[];
    for (final jsonMeaning in jsonMeanings){
      meanings.add(LanguageMeanings(language: jsonMeaning["language"], 
                                    meanings: List<String>.from(jsonMeaning["meanings"])));
    }
    var entry = Entry(
      kanjis: List<String>.from(jsonEntry["kanjis"]), 
      partOfSpeech: List<String>.from(jsonEntry["part_of_speech"]), 
      readings: List<String>.from(jsonEntry["readings"]));
    entry.meanings.addAll(meanings);
    entries.add(entry);
  }
  box.putMany(entries);
}