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
@collection
class Kanjidic2 {
  /// A unique id of this Kanji's entry in the database
  Id id = Isar.autoIncrement;
  /// This entries Kanji character
  @Index(type: IndexType.hash)
  String character;
  /// The school grade in which this kanji is thought
  int grade;
  /// A list of variants of this character, contains the
  List<JIS> variants = <JIS>[];
  /// The frequency of this Kanji
  int frequency;
  /// The jlpt level in which this kanji should be learned
  int jlpt;
  /// A list of all meanings of this character
  List<Meaning> meanings = <Meaning>[];
  /// A list of the on and kun readings of this character
  List<Reading> readings = <Reading>[];
  /// The non-standard readings of this character when it appears in names
  List<String> nanoris;

  Kanjidic2(
    {
      required this.character,
      required this.grade,
      required this.frequency,
      required this.jlpt,
      required this.nanoris
    }
  );
}
