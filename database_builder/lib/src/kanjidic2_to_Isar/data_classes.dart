import 'package:isar/isar.dart';
part 'data_classes.g.dart';

@embedded
class JIS {
  String? encoding;
  String? value;

  JIS({this.encoding, this.value});
}

@embedded
class Reading {
  String? rType;
  String? value;

  Reading({this.r_type, this.value});
}

@embedded
class Meaning {
  String? language;
  String? meaning;

  Meaning({this.language, this.meaning});
}

@collection
class Kanjidic2 {
  Id id = Isar.autoIncrement;
  @Index(type: IndexType.hash)
  String character;
  int grade;
  List<JIS> variants = <JIS>[];
  int frequency;
  int jlpt;
  List<Meaning> meanings = <Meaning>[];
  List<Reading> readings = <Reading>[];
  List<String> nanoris;

      required this.character,
      required this.grade,
      required this.frequency,
      required this.jlpt,
      required this.nanoris});
}
