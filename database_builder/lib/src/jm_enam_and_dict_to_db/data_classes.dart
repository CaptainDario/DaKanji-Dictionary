import 'package:objectbox/objectbox.dart';

@Entity()
class LanguageMeanings{
  int id = 0;
  String language;
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

@Entity()
class Entry {
  int id = 0;
  List<String> kanjis;
  List<String> readings;
  List<String> partOfSpeech;
  final meanings = ToMany<LanguageMeanings>();

  Entry({required this.kanjis, required this.readings, required this.partOfSpeech});

  @override
  String toString() {
    return '$kanjis: $readings';
  }
}