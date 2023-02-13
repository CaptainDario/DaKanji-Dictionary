import 'package:isar/isar.dart';
part 'data_classes.g.dart';





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
///
/// To update the ISAR code run
/// `dart pub run build_runner build --delete-conflicting-outputs`
@collection
class Tatoeba {
  /// A unique id of this Kanji's entry in the database
  Id id;
  /// The japanese sentence
  String sentence;
  /// A list containing all the surface elements that MeCab outputs for this
  /// sentence
  List<String> mecabSurfaces;
  /// A List containing the mecab-PoS-output of this sentence
  /// Every token in `mecabSurfaces` has 9 PoS elements
  List<String> mecabPos;
  /// A Map with all the translations of this example sentence
  List<Translation> translations;
  

  Tatoeba(
    {
      required this.id,
      required this.sentence,
      required this.mecabSurfaces,
      required this.mecabPos,
      this.translations = const []
    }
  );

  @override
  String toString() {
    return "$id: $sentence, has translations: ${translations.isNotEmpty}";
  }
}
