import 'package:hive/hive.dart';
part "dataClasses.g.dart";
@HiveType(typeId: 0)
class LanguageMeanings{
  @HiveField(0)
  String language;

  @HiveField(1)
  List<String> meanings;

  LanguageMeanings({required this.language, required this.meanings});

  @override
  String toString() {
    String representation = "Language: " + language + "\n";
    for (var meaning in meanings) {
      representation += meaning + "\n";
    }
    return(representation);
  }
}

@HiveType(typeId: 1)
class Entry {

  Entry({required this.kanjis, required this.readings, required this.partOfSpeech, required this.meanings});

  @HiveField(0)
  List<String> kanjis;

  @HiveField(1)
  List<String> readings;

  @HiveField(2)
  List<String> partOfSpeech;

  @HiveField(3)
  List<LanguageMeanings> meanings;

  @override
  String toString() {
    return '$kanjis: $readings';
  }
}