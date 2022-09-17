// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataClasses.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LanguageMeaningsAdapter extends TypeAdapter<LanguageMeanings> {
  @override
  final int typeId = 0;

  @override
  LanguageMeanings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LanguageMeanings(
      language: fields[0] as String,
      meanings: (fields[1] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, LanguageMeanings obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.language)
      ..writeByte(1)
      ..write(obj.meanings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LanguageMeaningsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EntryAdapter extends TypeAdapter<Entry> {
  @override
  final int typeId = 1;

  @override
  Entry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Entry(
      kanjis: (fields[0] as List).cast<String>(),
      readings: (fields[1] as List).cast<String>(),
      partOfSpeech: (fields[2] as List).cast<String>(),
      meanings: (fields[3] as List).cast<LanguageMeanings>(),
    );
  }

  @override
  void write(BinaryWriter writer, Entry obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.kanjis)
      ..writeByte(1)
      ..write(obj.readings)
      ..writeByte(2)
      ..write(obj.partOfSpeech)
      ..writeByte(3)
      ..write(obj.meanings);
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
