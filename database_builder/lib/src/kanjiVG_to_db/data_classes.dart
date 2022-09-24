import 'package:objectbox/objectbox.dart';

@Entity()
class KanjiSVG{
  int id = 0;
  String character;
  String svg;

  KanjiSVG({required this.character, required this.svg});
}