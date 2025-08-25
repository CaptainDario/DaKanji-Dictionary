import 'package:isar_community/isar.dart';
part 'data_classes.g.dart';





/// Class to store a translation of a tatoeba sentence, used together with 
/// `Tatoeba`
@embedded
class Translation {
  /// the language of this translation
  String? language;
  /// the actual sentence of this translation
  String? sentence;

  Translation(
    {
      this.language,
      this.sentence
    }
  );

  @override
  String toString() {
    return "$language: $sentence";
  }
}

/// Class to store the most important bits of a Tatoeba example sentences.
///
/// To update the ISAR code run
/// `dart pub run build_runner build --delete-conflicting-outputs`
@collection
class ExampleSentence {
  /// A unique id of this Kanji's entry in the database
  Id id;
  /// The japanese sentence
  String sentence;
  /// A list containing all the baseforms that MeCab outputs for this sentence
  @Index(type: IndexType.hashElements)
  List<String> mecabBaseForms;
  /// A List containing the mecab-PoS-output of this sentence (first four
  /// elements that mecab outputs)
  List<String> mecabPos;
  /// A Map with all the translations of this example sentence
  List<Translation> translations;
  

  ExampleSentence(
    {
      required this.id,
      required this.sentence,
      required this.mecabBaseForms,
      required this.mecabPos,
      this.translations = const []
    }
  );

  @override
  String toString() {
    return "$id: $sentence, has translations: ${translations.isNotEmpty}";
  }
}
