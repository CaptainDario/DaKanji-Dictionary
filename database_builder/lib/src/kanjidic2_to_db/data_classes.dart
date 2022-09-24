import 'package:objectbox/objectbox.dart';

@Entity()
class JIS{
  int id = 0;
  String encoding;
  String value;

  JIS({required this.encoding, required this.value});
}

@Entity()
class Reading{
  int id = 0;
  String r_type;
  String value;

  Reading({required this.r_type, required this.value});
}

@Entity()
class Meaning{
  int id = 0;
  String language;
  String meaning;

  Meaning({required this.language, required this.meaning});
}

@Entity()
class Kanjidic2Entry {
  int id = 0;
  String literal;
  int grade;
  final variants = ToMany<JIS>();
  int frequency;
  int jlpt;
  final meanings = ToMany<Meaning>();
  final readings = ToMany<Reading>();
  List<String> nanoris;

  Kanjidic2Entry({required this.literal, required this.grade, required this.frequency, 
          required this.jlpt, required this.nanoris});
}