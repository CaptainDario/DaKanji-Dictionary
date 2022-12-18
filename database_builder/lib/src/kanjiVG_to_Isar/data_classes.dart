import 'package:isar/isar.dart';

part 'data_classes.g.dart';

@collection
class KanjiSVG {
  Id id = Isar.autoIncrement;
  String character;
  String svg;
  @Index(type: IndexType.value)
  short strokes;
  List<String> radicals;

  KanjiSVG({required this.character, required this.svg, required this.strokes, required this.radicals});
}
