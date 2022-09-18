import 'package:objectbox/objectbox.dart';

@Entity()
class Jm_enam_and_dict_LanguageMeanings{
  int id = 0;
  String language;

  List<String> meanings;

  // final jm_enam_and_dict_Entry = ToOne<Jm_enam_and_dict_Entry>();

  Jm_enam_and_dict_LanguageMeanings({required this.language, required this.meanings});

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
class Jm_enam_and_dict_Entry {

  Jm_enam_and_dict_Entry({required this.kanjis, required this.readings, required this.partOfSpeech});

  int id = 0;
  List<String> kanjis;

  List<String> readings;

  List<String> partOfSpeech;

  
  final meanings = ToMany<Jm_enam_and_dict_LanguageMeanings>();

  @override
  String toString() {
    return '$kanjis: $readings';
  }
}