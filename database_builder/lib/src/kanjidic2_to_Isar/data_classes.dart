import 'package:isar/isar.dart';
part 'data_classes.g.dart';

/// Bundles JIS code and the matching character
@embedded
class JIS {
  /// The JIS encoding of `value`
  String? encoding;
  /// The actual character value of `encoding`
  String? value;

  JIS({this.encoding, this.value});
}

/// Convenience class to bundle the reading type (on / kun) and the actual 
/// reading
@embedded
class Reading {
  /// The reading type (on / kun)
  String? rType;
  /// The actual reading
  String? value;

  Reading({this.rType, this.value});
}

/// Meaning and translation of a KanjiDic2 entry
@embedded
class Meaning {
  /// The translation of `meaning`
  String? language;
  /// The meaning of this character
  String? meaning;

  Meaning({this.language, this.meaning});
}

/// Class to store the most important bits of a KanjiDic2 database entry. 
///
/// To generate the Isar code run:
/// `dart run build_runner build --delete-conflicting-outputs`
@collection
class Kanjidic2 {
  /// A unique id of this Kanji's entry in the database
  Id id = Isar.autoIncrement;
  /// This entries Kanji character
  @Index(type: IndexType.hash)
  String character;
  /// A list of variants of this character, contains the
  List<JIS> variants = <JIS>[];
  /// The frequency of this Kanji
  int frequency;
  /// How many strokes does this kanji have
  @Index(type: IndexType.value)
  int strokeCount;
  /// The school grade in which this kanji is thought
  int grade;
  /// The jlpt level (old) in which this kanji should be learned
  int jlptOld;
  /// The jlpt level (new) in which this kanji should be learned
  int jlptNew;
  /// The kanji learners course level in which this kanji should be learned
  int klc;
  /// The wanikani level in which this kanji should be learned
  int wanikani;
  /// The remembering the kanji (old) level in which this kanji should be learned
  int rtkOld;
  /// The remembering the kanji (new) level in which this kanji should be learned
  int rtkNew;
  /// The kanji kentei level in which this kanji should be learned
  double kanken;
  /// A list of all meanings of this character
  List<Meaning> meanings = <Meaning>[];
  /// A list of the on and kun readings of this character
  List<Reading> readings = <Reading>[];
  /// A list of kanjis that have an opposite meaning
  List<String>? antonyms;
  /// A list of kanjis that have a closely related meaning
  List<String>? synonyms;
  /// kanji that look visualy similar
  List<String>? lookalikes;
  /// The non-standard readings of this character when it appears in names
  List<String> nanoris;

  Kanjidic2(
    {
      required this.character,
      required this.frequency,
      required this.strokeCount,
      required this.grade,
      required this.jlptOld,
      required this.jlptNew,
      required this.klc,
      required this.wanikani,
      required this.rtkOld,
      required this.rtkNew,
      required this.kanken,
      required this.antonyms,
      required this.synonyms,
      required this.lookalikes,
      required this.nanoris
    }
  );
}
