import 'package:isar/isar.dart';
part 'data_classes.g.dart';




@embedded
class Reading {
  ///
  String? rType;
  ///
  String? value;

  Reading({this.rType, this.value});
}

/// 
@embedded
class Translation {
  ///
  String? language;
  ///
  String? sentence;

  Translation(
    {
      this.language,
      this.sentence
    }
  );
}

/// Class to store the most important bits of a KanjiDic2 database entry. 
@collection
class Tatoeba {
  /// A unique id of this Kanji's entry in the database
  Id id;
  /// The japanese sentence
  String sentence;
  /// A list with all the translations
  List<Translation> translations;
  

  Tatoeba(
    {
      required this.id,
      required this.sentence,
      required this.translations
    }
  );
}
