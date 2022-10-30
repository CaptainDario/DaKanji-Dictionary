import 'data_classes.dart';
import 'package:isar/isar.dart';

void jsonToIsar(List data, Isar isar){
  List<Entry> entries = <Entry>[];
  // List<LanguageMeanings> language_meaning = <LanguageMeanings>[];
  for (final jsonEntry in data){
    var jsonMeanings = jsonEntry["meanings"];
    var meanings = <LanguageMeanings>[];
    for (final jsonMeaning in jsonMeanings){
      meanings.add(LanguageMeanings(language: jsonMeaning["language"], 
                                    meanings: List<String>.from(jsonMeaning["meanings"])));
    }
    var entry = Entry(
      kanjis: List<String>.from(jsonEntry["kanjis"]), 
      meanings: meanings.map((e) => e.toString()).toList(),
      partOfSpeech: List<String>.from(jsonEntry["part_of_speech"]), 
      readings: List<String>.from(jsonEntry["readings"]));
    // entry.meanings.addAll(meanings);
    entries.add(entry);
    // entry.meanings.addAll(meanings);
    // entry.meanings.save();

    // isar.writeTxn(() async {
    //   isar.entrys.put(entry);
    //   isar.languageMeanings.putAll(meanings);
    //   entry.meanings.save();
    // });

    // language_meaning.addAll(meanings);
  }
  // isar.writeTxn(() async {
  //   for (final entry in entries){
  //     isar.entrys.put(entry);
  //     isar.languageMeanings.putAll(entry.meanings.toList());
  //     // entry.meanings.save();
  //   }
    
  // });
  // isar.writeTxn(() async {
  //   isar.languageMeanings.putAll(language_meaning);
  // });
  // isar.entrys.putAll(entries)
  isar.writeTxnSync(()  {
    isar.entrys.putAllSync(entries, saveLinks: true);
  });
  
  // isar.writeTxn(() async {
  //   // isar.entrys.putAll(entries);
  //   isar.entrys.putAllSync(entries, saveLinks: true);
  // });
  // isar.writeTxn(() => isar.entrys.mea
}