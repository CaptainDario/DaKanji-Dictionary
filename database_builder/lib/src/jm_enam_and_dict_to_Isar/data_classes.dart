import 'package:isar/isar.dart';
part 'data_classes.g.dart';

@embedded
class LanguageMeanings{
  // Id id = Isar.autoIncrement;
  String? language;
  List<String>? meanings;

  LanguageMeanings({String? this.language, List<String>? this.meanings});

  @override
  String toString() {
    String representation = "Language: " + language! + "\n";
    for (var meaning in meanings!) {
      representation += meaning + "\n";
    }
    return(representation);
  }
}

@collection
class Entry {
  Id id = Isar.autoIncrement;
  List<String> kanjis;
  List<String> readings;
  List<String> partOfSpeech;
  List<LanguageMeanings> meanings = <LanguageMeanings>[];

  Entry({required this.kanjis, required this.readings, required this.partOfSpeech, required this.meanings});

  @override
  String toString() {
    return '$kanjis: $readings';
  }
}