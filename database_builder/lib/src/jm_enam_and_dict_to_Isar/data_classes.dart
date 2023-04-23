import 'package:isar/isar.dart';
part 'data_classes.g.dart';

/// Convenience class to bundle the meanings of `JMdict` / `JMNEdict` entries
/// and their translations (possibly different languages)
@embedded
class LanguageMeanings {
  String? language;
  List<String>? meanings;

  LanguageMeanings({this.language, this.meanings});

  @override
  String toString() {
    String representation = "Language: " + language! + "\n";
    for (var meaning in meanings!) {
      representation += meaning + "\n";
    }
    return (representation);
  }
}

/// Class to store the most important bits of a JMNEdict database entry. 
@Collection(accessor: "jmnedict")
class JMNEdict {
  /// A unique ID identifying this JMDict entry
  Id id;
  /// A list containing different versions how to write this entry using Kanji
  @Index(type: IndexType.value)
  List<String> kanjis;
  /// A list containing different versions how to read this entry
  @Index(type: IndexType.value)
  List<String> readings;
  /// The part of speech elements of this entry
  List<String> partOfSpeech;
  /// The meanings of this entry and their translations
  List<LanguageMeanings> meanings = <LanguageMeanings>[];

  JMNEdict(
    {
      required this.id,
      required this.kanjis,
      required this.readings,
      required this.partOfSpeech,
      required this.meanings
    }
  );

  @override
  String toString() {
    return '$kanjis: $readings';
  }
}


/// Class to store the most important bits of a JMDict database entry.
/// 
/// This class is used to store the data in the Isar database.
/// Rebuild isar auto generated code with
/// `dart run build_runner build --delete-conflicting-outputs`
@Collection(accessor: "jmdict")
class JMdict {
  /// A unique ID identifying this JMDict entry
  Id id;

  /// The frequency of this entry (follows a zipf distribution)
  float frequency;

  /// A list containing different versions how to write this entry using Kanji
  @Index(type: IndexType.value)
  List<String> kanjis;
  /// Indicates unusual aspects of the kanji used in the entry
  /// 
  /// Notes: matches `kanjis` in length, if not null
  List<String?>? kanjiInfo;

  /// A list containing different versions how to read this entry
  /// 
  /// Note: meach `kanjis` in length
  List<String> readings;
  /// used to indicate some unusual aspect of the reading.
  /// 
  /// Note: matches `readings` in length, if not null
  List<String?>? readingInfo;
  /// Indicates that the reading only applies to the kanji of `kanjis`
  /// 
  /// Note: matches `readings` in length, if not null
  List<String?>? readingRestriction;
  /// Contains different versions how to read this entry using ONLY Hiragana
  @Index(type: IndexType.value)
  List<String> hiraganas;

  /// The meanings of this entry and their translations
  List<LanguageMeanings> meanings = <LanguageMeanings>[];
  /// Which kanji elements are associated with this sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<String?>? senseKanjiTarget;
  /// Which reading elements are associated with this sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<String?>? senseReadingTarget;
  /// Other entries that are related to this sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<String?>? xref;
  /// Part-of-speech information about this sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<String?>? partOfSpeech;
  /// Field of application of the entry/sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<String?>? field;
  /// Indicates the source language(s) of a loan-word/gairaigo
  /// 
  /// Note: matches `meanings` in length, if not null
  List<String?>? source;
  /// Indicates the dialect in which the entry is used
  /// 
  /// Note: matches `meanings` in length, if not null
  List<String?>? dialect;
  /// Miscellaneous information
  /// 
  /// Note: matches `meanings` in length, if not null
  List<String?>? senseInfo;
  

  JMdict(
    {
      required this.id,

      // general
      required this.frequency,

      // Kanji (k_ele)
      required this.kanjis,
      required this.kanjiInfo,

      // Readings (r_ele)
      required this.readings,
      required this.readingInfo,
      required this.readingRestriction,
      required this.hiraganas,

      // translations (sense)
      required this.meanings,
      required this.senseKanjiTarget,
      required this.senseReadingTarget,
      required this.xref,
      required this.partOfSpeech,
      required this.field,
      required this.source,
      required this.dialect,
      required this.senseInfo,
    }
  );

  @override
  String toString() {
    return '$kanjis: $readings';
  }
}
