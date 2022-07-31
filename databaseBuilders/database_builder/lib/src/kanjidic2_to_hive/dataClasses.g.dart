// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataClasses.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JISAdapter extends TypeAdapter<JIS> {
  @override
  final int typeId = 0;

  @override
  JIS read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return JIS(
      encoding: fields[0] as String,
      value: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, JIS obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.encoding)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JISAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ReadingAdapter extends TypeAdapter<Reading> {
  @override
  final int typeId = 1;

  @override
  Reading read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Reading(
      r_type: fields[0] as String,
      value: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Reading obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.r_type)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReadingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MeaningAdapter extends TypeAdapter<Meaning> {
  @override
  final int typeId = 2;

  @override
  Meaning read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Meaning(
      language: fields[0] as String,
      meaning: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Meaning obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.language)
      ..writeByte(1)
      ..write(obj.meaning);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MeaningAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EntryAdapter extends TypeAdapter<Entry> {
  @override
  final int typeId = 3;

  @override
  Entry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Entry(
      literal: fields[0] as String,
      grade: fields[1] as int,
      variants: (fields[2] as List).cast<JIS>(),
      frequency: fields[3] as int,
      jlpt: fields[4] as int,
      readings: (fields[5] as List).cast<Reading>(),
      meanings: (fields[6] as List).cast<Meaning>(),
      nanoris: (fields[7] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Entry obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.literal)
      ..writeByte(1)
      ..write(obj.grade)
      ..writeByte(2)
      ..write(obj.variants)
      ..writeByte(3)
      ..write(obj.frequency)
      ..writeByte(4)
      ..write(obj.jlpt)
      ..writeByte(5)
      ..write(obj.readings)
      ..writeByte(6)
      ..write(obj.meanings)
      ..writeByte(7)
      ..write(obj.nanoris);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EntryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
