import 'package:isar/isar.dart';

part 'data_classes.g.dart';



/// Class to store the most important bits of a KanjiVG database entry. 
@collection
class KanjiSVG {
  /// A unique id of this Kanji's entry in the database
  Id id = Isar.autoIncrement;
  /// This entries Kanji character
  @Index(type: IndexType.hash)
  String character;
  /// The SVG data to of this Kanji
  String svg;
  @Index(type: IndexType.hash)
  /// Number of strokes of this Kanji
  short strokes;
  /// All radicals used in this Kanji
  List<String> radicals;

  KanjiSVG(
    {
      required this.character,
      required this.svg,
      required this.strokes,
      required this.radicals
    }
  );
}
