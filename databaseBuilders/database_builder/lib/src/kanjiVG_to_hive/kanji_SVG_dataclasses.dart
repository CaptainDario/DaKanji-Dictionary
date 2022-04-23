import 'package:hive/hive.dart';
part 'kanji_SVG_dataclasses.g.dart';
@HiveType(typeId: 0)
class KanjiSVG{
  KanjiSVG({required this.SVG});
  @HiveField(1)
  String SVG;
}