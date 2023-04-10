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
@Collection(accessor: "jmdict")
class JMdict {
  /// A unique ID identifying this JMDict entry
  Id id;
  /// A list containing different versions how to write this entry using Kanji
  @Index(type: IndexType.value)
  List<String> kanjis;
  /// A list containing different versions how to read this entry
  @Index(type: IndexType.value)
  List<String> readings;
  /// This entry written using romaji
  List<String> romaji;
  /// The part of speech elements of this entry
  List<String> partOfSpeech;
  /// The meanings of this entry and their translations
  List<LanguageMeanings> meanings = <LanguageMeanings>[];
  /// The frequency of this entry (follows a zipf distribution)
  float frequency;

  List<String> field;
  List<String> dialect;
  List<Id> xref;
  List<String> re_inf;
    // fld: list[str] = field(default_factory=list)
    // dial: list[str] = field(default_factory=list)
    // xref: list[int] = field(default_factory=list)
    // re_inf: list[int] = field(default_factory=list)
  JMdict(
    {
      required this.id,
      required this.kanjis,
      required this.readings,
      required this.romaji,
      required this.partOfSpeech,
      required this.meanings,
      required this.frequency,
      required this.field,
      required this.dialect,
      required this.xref,
      required this.re_inf
    }
  );

  @override
  String toString() {
    return '$kanjis: $readings';
  }
}

class JMdict_pre {
  /// A unique ID identifying this JMDict entry
  Id id;
  /// A list containing different versions how to write this entry using Kanji
  List<String> kanjis;
  /// A list containing different versions how to read this entry
  List<String> readings;
  /// The same as `readings` but written ONLY in hiragana
  List<String> hiraganas;
  /// The part of speech elements of this entry
  List<String> partOfSpeech;
  /// The meanings of this entry and their translations
  List<LanguageMeanings> meanings = <LanguageMeanings>[];
  /// The frequency of this entry (follows a zipf distribution)
  float frequency;

  List<String> field;
  List<String> dialect;
  List<String> xref;
  List<String> re_inf;
    // fld: list[str] = field(default_factory=list)
    // dial: list[str] = field(default_factory=list)
    // xref: list[int] = field(default_factory=list)
    // re_inf: list[int] = field(default_factory=list)
  JMdict_pre(
    {
      required this.id,
      required this.kanjis,
      required this.readings,
      required this.hiraganas,
      required this.partOfSpeech,
      required this.meanings,
      required this.frequency,
      required this.field,
      required this.dialect,
      required this.xref,
      required this.re_inf
    }
  );

  @override
  String toString() {
    return '$kanjis: $readings';
  }
}