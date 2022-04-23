// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kanji_SVG_dataclasses.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KanjiSVGAdapter extends TypeAdapter<KanjiSVG> {
  @override
  final int typeId = 0;

  @override
  KanjiSVG read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KanjiSVG(
      SVG: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, KanjiSVG obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.SVG);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KanjiSVGAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
