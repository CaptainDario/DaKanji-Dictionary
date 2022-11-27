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
  String? r_type;
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
class Kanjidic2Entry {
  Id id = Isar.autoIncrement;
  String literal;
  int grade;
  List<JIS> variants = <JIS>[];
  int frequency;
  int jlpt;
  List<Meaning> meanings = <Meaning>[];
  List<Reading> readings = <Reading>[];
  List<String> nanoris;

  Kanjidic2Entry(
      {required this.literal,
      required this.grade,
      required this.frequency,
      required this.jlpt,
      required this.nanoris});
}
