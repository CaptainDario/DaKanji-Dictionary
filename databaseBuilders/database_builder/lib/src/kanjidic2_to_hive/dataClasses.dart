import 'dart:ffi';

import 'package:hive/hive.dart';
part "dataClasses.g.dart";

@HiveType(typeId: 010)
class JIS{
  @HiveField(0)
  String encoding;

  @HiveField(1)
  String value;

  JIS({required this.encoding, required this.value});
}

@HiveType(typeId: 011)
class Reading{
  @HiveField(0)
  String r_type;

  @HiveField(1)
  String value;

  Reading({required this.r_type, required this.value});
}

@HiveType(typeId: 012)
class Meaning{
  @HiveField(0)
  String language;

  @HiveField(1)
  String meaning;

  Meaning({required this.language, required this.meaning});
}

@HiveType(typeId: 013)
class Entry {

  Entry({required this.literal, required this.grade, required this.variants, required this.frequency, 
          required this.jlpt, required this.readings, required this.meanings, required this.nanoris});

  @HiveField(0)
  String literal;
  @HiveField(1)
  int grade;
  @HiveField(2)
  List<JIS> variants;
  @HiveField(3)
  int frequency;
  @HiveField(4)
  int jlpt;
  @HiveField(5)
  List<Reading> readings;
  @HiveField(6)
  List<Meaning> meanings;
  @HiveField(7)
  List<String> nanoris;
}