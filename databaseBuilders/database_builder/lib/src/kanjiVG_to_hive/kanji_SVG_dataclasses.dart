import 'package:hive/hive.dart';
part 'kanji_SVG_dataclasses.g.dart';
@HiveType(typeId: 020)
class KanjiSVG{
  KanjiSVG({required this.SVG});
  @HiveField(1)
  String SVG;
}