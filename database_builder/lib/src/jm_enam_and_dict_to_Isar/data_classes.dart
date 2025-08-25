import 'package:collection/collection.dart';
import 'package:isar_community/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_classes.g.dart';



@JsonSerializable()
@embedded
class JMDictAttribute {

  List<String?> attributes = <String>[];

  JMDictAttribute(
    {
      this.attributes = const []
    }
  );

  factory JMDictAttribute.fromJson(Map<String, dynamic> json) =>
    _$JMDictAttributeFromJson(json);

  Map<String, dynamic> toJson() =>
    _$JMDictAttributeToJson(this);
}

/// Convenience class to bundle the meanings of `JMdict` / `JMNEdict` entries
/// and their translations (possibly different languages)
@JsonSerializable()
@embedded
class LanguageMeanings {

  /// The language of this meanings
  String? language;
  /// The meanings of this entry in the given language
  List<JMDictAttribute> meanings = const [];
  /// Which kanji elements are associated with this sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<JMDictAttribute?>? senseKanjiTarget;
  /// Which reading elements are associated with this sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<JMDictAttribute?>? senseReadingTarget;
  /// Other entries that are related to this sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<JMDictAttribute?>? xref;
  /// Antonyms of this word
  ///
  /// Note: matches `meanings` in length, if not null
  List<JMDictAttribute?>? antonyms;
  /// Part-of-speech information about this sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<JMDictAttribute?>? partOfSpeech;
  /// Field of application of the entry/sense
  /// 
  /// Note: matches `meanings` in length, if not null
  List<JMDictAttribute?>? field;
  /// Indicates the source language(s) of a loan-word/gairaigo
  /// 
  /// Note: matches `meanings` in length, if not null
  List<JMDictAttribute?>? source;
  /// Indicates the dialect in which the entry is used
  /// 
  /// Note: matches `meanings` in length, if not null
  List<JMDictAttribute?>? dialect;
  /// Miscellaneous information
  /// 
  /// Note: matches `meanings` in length, if not null
  List<JMDictAttribute?>? senseInfo;


  LanguageMeanings(
    {
      this.language,
      this.meanings = const [],
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
    for (var meaning in meanings) {
      representation += meaning.attributes.join(", ");
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
@JsonSerializable()
@Collection(accessor: "jmdict")
class JMdict {
  /// A unique ID identifying this JMDict entry
  Id id;

  /// The frequency of this entry (follows a zipf distribution)
  float frequency;
  /// The JLPT level of this entry (can be different for different kanjis of
  /// the same entry)
  List<String>? jlptLevel;
  /// number of the audio file of this entry if it exists
  int? audio;

  /// A list containing different versions how to write this entry using Kanji
  List<String> kanjis = <String>[];
  /// List of indexes to find this entry
  @Index(type: IndexType.value, caseSensitive: false)
  List<String> kanjiIndexes = <String>[];
  /// Indicates unusual aspects of the kanji used in the entry
  /// 
  /// Notes: matches `kanjis` in length, if not null
  List<JMDictAttribute?>? kanjiInfo;
  @Index(type: IndexType.value, caseSensitive: false)
  /// A list containing different versions how to read this entry
  /// 
  /// Note: meach `kanjis` in length
  List<String> readings;
  /// used to indicate some unusual aspect of the reading.
  /// 
  /// Note: matches `readings` in length, if not null
  List<JMDictAttribute?>? readingInfo;
  /// Indicates that the reading only applies to the kanji of `kanjis`
  /// 
  /// Note: matches `readings` in length, if not null
  List<JMDictAttribute?>? readingRestriction;
  /// Contains different versions how to read this entry using ONLY Hiragana
  @Index(type: IndexType.value, caseSensitive: false)
  List<String> hiraganas;
  /// Indicates the pitch accent of the `readings` element at the same index
  /// 
  /// Note: matches `readings` in length, if not null
  List<JMDictAttribute?>? accents;
  /// The meanings of this entry and their translations
  List<LanguageMeanings> meanings = <LanguageMeanings>[];
  /// List of meanings indexes that are used to find this entry
  /// 
  /// example: "to eat" → ["to", "eat"]
  @Index(type: IndexType.value, caseSensitive: false)
  List<String> get meaningsIndexes => meanings.map(
      (e) => e.meanings.map((e) => e.attributes)
    ).flattened.flattened.whereNotNull()
    //.map((e) => Isar.splitWords(e)).flattened
    .toSet().toList();


  JMdict(
    {
      required this.id,

      // general
      required this.frequency,
      this.jlptLevel,

      // Kanji (k_ele)
      required this.kanjis,
      required this.kanjiIndexes,
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

  factory JMdict.fromJson(Map<String, dynamic> json) => _$JMdictFromJson(json);

  Map<String, dynamic> toJson() => _$JMdictToJson(this);
}
