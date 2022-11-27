import 'package:isar/isar.dart';

part 'data_classes.g.dart';

@collection
class KanjiSVG {
  Id id = Isar.autoIncrement;
  String character;
  String svg;

  KanjiSVG({required this.character, required this.svg});
}
