import 'package:isar_community/isar.dart';

part 'data_classes.g.dart';



/// Class to store the most important bits of a KanjiVG database entry.
///
/// To generate the Isar code run:
/// `dart run build_runner build --delete-conflicting-outputs`
@collection
class KanjiSVG {
  /// A unique id of this Kanji's entry in the database
  Id id = Isar.autoIncrement;
  /// Name of this KanjiVG entry
  String kanjiVGId;
  /// This entries Kanji character
  @Index(type: IndexType.hash)
  String character;
  /// The SVG data to of this Kanji
  String svg;
  /// Number of strokes of this Kanji
  @Index(type: IndexType.value)
  short strokes;
  /// All radicals used in this Kanji
  List<String> radicals;

  KanjiSVG(
    {
      required this.kanjiVGId,
      required this.character,
      required this.svg,
      required this.strokes,
      required this.radicals
    }
  );
}
