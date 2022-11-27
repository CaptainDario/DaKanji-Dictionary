import 'package:isar/isar.dart';
part 'data_classes.g.dart';

@embedded
class LanguageMeanings{
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

@Collection(accessor: "jmnedict")
class JMNEdict {
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.value)
  List<String> kanjis;
  @Index(type: IndexType.value)
  List<String> readings;
  List<String> partOfSpeech;
  List<LanguageMeanings> meanings = <LanguageMeanings>[];

  JMNEdict({required this.kanjis, required this.readings, required this.partOfSpeech, required this.meanings});

  @override
  String toString() {
    return '$kanjis: $readings';
  }
}

@Collection(accessor: "jmdict")
class JMdict{
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.value)
  List<String> kanjis;
  @Index(type: IndexType.value)
  List<String> readings;
  List<String> partOfSpeech;
  List<LanguageMeanings> meanings = <LanguageMeanings>[];
  float frequency;

  JMdict({required this.kanjis, required this.readings, required this.partOfSpeech, required this.meanings, required this.frequency});

  @override
  String toString() {
    return '$kanjis: $readings';
  }
  
  
}