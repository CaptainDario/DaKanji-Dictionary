import 'package:isar/isar.dart';
part 'data_classes.g.dart';

@embedded
class LanguageMeanings{
  // Id id = Isar.autoIncrement;
  String? language;
  List<String>? meanings;

  LanguageMeanings({String? this.language, List<String>? this.meanings});

  // @override
  // String toString() {
  //   String representation = "Language: " + language! + "\n";
  //   for (var meaning in meanings!) {
  //     representation += meaning + "\n";
  //   }
  //   return(representation);
  // }

  // List<String> toStringList(){
  //   List<String> representation = <String>[];
  //   for (var meaning in meanings!){
  //       representation.add("[" + language! + "]" + meaning);
  //   }
  //   return representation;
  // }
  @override
  String toString(){
    String representation = "";
    for (var meaning in meanings!){
        representation += ("[" + language! + "]" + meaning);
    }
    return representation;
  }


}

@collection
class Entry {
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.value)
  List<String> kanjis;
  @Index(type: IndexType.value)
  List<String> readings;
  List<String> partOfSpeech;
  @Index(type: IndexType.value)
  List<String> meanings = <String>[];
  // List<LanguageMeanings> meanings = <LanguageMeanings>[];

  Entry({required this.kanjis, required this.readings, required this.partOfSpeech, required this.meanings});

  @override
  String toString() {
    return '$kanjis: $readings';
  }
}