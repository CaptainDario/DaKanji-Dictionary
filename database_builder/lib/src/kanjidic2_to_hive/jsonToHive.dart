import 'dataClasses.dart';
import 'package:hive/hive.dart';

void jsonToHive(List data, Box<dynamic> box){
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
    box.add(Entry(literal: jsonEntry["literal"], grade: jsonEntry["grade"], variants: variants, 
                      frequency: jsonEntry["frequency"], jlpt: jsonEntry["jlpt"], 
                      readings: readings, meanings: meanings, nanoris: nanoris));
  }
}