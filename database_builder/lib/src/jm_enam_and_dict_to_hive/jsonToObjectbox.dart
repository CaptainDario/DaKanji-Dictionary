import 'dataClasses_objectbox.dart';
import '../../objectbox.g.dart';
import 'package:objectbox/objectbox.dart';

void jsonToObjectbox(List data, Box<dynamic> box){
  List<Jm_enam_and_dict_Entry> entries = <Jm_enam_and_dict_Entry>[];
  for (final jsonEntry in data){
    // jsonEntry["kanjis"];
    // jsonEntry["readings"];
    // jsonEntry["part_of_speech"];
    var jsonMeanings = jsonEntry["meanings"];
    var meanings = <Jm_enam_and_dict_LanguageMeanings>[];
    for (final jsonMeaning in jsonMeanings){
      meanings.add(Jm_enam_and_dict_LanguageMeanings(language: jsonMeaning["language"], 
                                    meanings: List<String>.from(jsonMeaning["meanings"])));
    }
    var entry = Jm_enam_and_dict_Entry(
      kanjis: List<String>.from(jsonEntry["kanjis"]), 
      partOfSpeech: List<String>.from(jsonEntry["part_of_speech"]), 
      readings: List<String>.from(jsonEntry["readings"]));
    entry.meanings.addAll(meanings);
    entries.add(entry);
    // box.put(entry);
  }
  box.putMany(entries);
}