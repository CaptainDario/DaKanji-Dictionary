import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_classes.g.dart';



@JsonSerializable()
@embedded
class LanguageMeaningsAttribute {

  List<String?> attributes = <String>[];

  LanguageMeaningsAttribute(
    {
      this.attributes = const []
    }
  );

  factory LanguageMeaningsAttribute.fromJson(Map<String, dynamic> json) =>
    _$LanguageMeaningsAttributeFromJson(json);

  Map<String, dynamic> toJson() =>
    _$LanguageMeaningsAttributeToJson(this);
}

/// Convenience class to bundle the meanings of `JMdict` / `JMNEdict` entries
/// and their translations (possibly different languages)
@JsonSerializable()
@embedded
class LanguageMeanings {

  /// The language of this meanings
  String? language;
  /// The meanings of this entry in the given language
  List<String>? meanings;
  /// Which kanji elements are associated with this sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<LanguageMeaningsAttribute?>? senseKanjiTarget;
  /// Which reading elements are associated with this sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<LanguageMeaningsAttribute?>? senseReadingTarget;
  /// Other entries that are related to this sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<LanguageMeaningsAttribute?>? xref;
  /// Antonyms of this word
  ///
  /// Note: matches `meanings` in length, if not null
  List<LanguageMeaningsAttribute?>? antonyms;
  /// Part-of-speech information about this sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<LanguageMeaningsAttribute?>? partOfSpeech;
  /// Field of application of the entry/sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<LanguageMeaningsAttribute?>? field;
  /// Indicates the source language(s) of a loan-word/gairaigo
  /// 
  /// Note: matches `meanings` in length, if not null
  List<LanguageMeaningsAttribute?>? source;
  /// Indicates the dialect in which the entry is used
  /// 
  /// Note: matches `meanings` in length, if not null
  List<LanguageMeaningsAttribute?>? dialect;
  /// Miscellaneous information
  /// 
  /// Note: matches `meanings` in length, if not null
  List<LanguageMeaningsAttribute?>? senseInfo;


  LanguageMeanings(
    {
      this.language,
      this.meanings,
      this.senseKanjiTarget,
      this.senseReadingTarget,
      this.xref,
      this.antonyms,
      this.partOfSpeech,
      this.field,
      this.source,
      this.dialect,
      this.senseInfo,
    }
  );

  @override
  String toString() {
    String representation = "Language: " + language! + "\n";
    for (var meaning in meanings!) {
      representation += meaning + "\n";
    }
    return (representation);
  }

  factory LanguageMeanings.fromJson(Map<String, dynamic> json) => _$LanguageMeaningsFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageMeaningsToJson(this);
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
  /// The JLPT level of this entry (can be different for different kanjis of
  /// the same entry)
  List<String>? jlptLevel;

  /// A list containing different versions how to write this entry using Kanji
  @Index(type: IndexType.value)
  List<String> kanjis = <String>[];
  /// A list containing additional search terms from which this entry can be 
  @Index(type: IndexType.value)
  List<String> kanjiIndexes = <String>[];
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

  /// Indicates the pitch accent of the `readings` element at the same index
  /// 
  /// Note: matches `readings` in length, if not null
  List<String?>? accents;

  /// The meanings of this entry and their translations
  List<LanguageMeanings> meanings = <LanguageMeanings>[];

  

  JMdict(
    {
      required this.id,

      // general
      required this.frequency,
      this.jlptLevel,

      // Kanji (k_ele)
      required this.kanjis,
      required this.kanjiInfo,

      // Readings (r_ele)
      required this.readings,
      required this.readingInfo,
      required this.readingRestriction,
      required this.hiraganas,
      this.accents,

      // translations (sense)
      required this.meanings,
    }
  );

  @override
  String toString() {
    return '$kanjis: $readings';
  }
}
