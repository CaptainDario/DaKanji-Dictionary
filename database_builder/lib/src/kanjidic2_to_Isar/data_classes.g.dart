// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetKanjidic2Collection on Isar {
  IsarCollection<int, Kanjidic2> get kanjidic2s => this.collection();
}

const Kanjidic2Schema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Kanjidic2',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'character',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'variants',
        type: IsarType.objectList,
        target: 'JIS',
      ),
      IsarPropertySchema(
        name: 'frequency',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'strokeCount',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'grade',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'jlptOld',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'jlptNew',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'klc',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'wanikani',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'rtkOld',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'rtkNew',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'kanken',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'meanings',
        type: IsarType.objectList,
        target: 'Meaning',
      ),
      IsarPropertySchema(
        name: 'readings',
        type: IsarType.objectList,
        target: 'Reading',
      ),
      IsarPropertySchema(
        name: 'antonyms',
        type: IsarType.stringList,
      ),
      IsarPropertySchema(
        name: 'synonyms',
        type: IsarType.stringList,
      ),
      IsarPropertySchema(
        name: 'lookalikes',
        type: IsarType.stringList,
      ),
      IsarPropertySchema(
        name: 'nanoris',
        type: IsarType.stringList,
      ),
    ],
    indexes: [
      IsarIndexSchema(
        name: 'character',
        properties: [
          "character",
        ],
        unique: false,
        hash: true,
      ),
      IsarIndexSchema(
        name: 'strokeCount',
        properties: [
          "strokeCount",
        ],
        unique: false,
        hash: false,
      ),
    ],
  ),
  converter: IsarObjectConverter<int, Kanjidic2>(
    serialize: serializeKanjidic2,
    deserialize: deserializeKanjidic2,
    deserializeProperty: deserializeKanjidic2Prop,
  ),
  embeddedSchemas: [JISSchema, MeaningSchema, ReadingSchema],
);

@isarProtected
int serializeKanjidic2(IsarWriter writer, Kanjidic2 object) {
  IsarCore.writeString(writer, 1, object.character);
  {
    final list = object.variants;
    final listWriter = IsarCore.beginList(writer, 2, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializeJIS(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  IsarCore.writeLong(writer, 3, object.frequency);
  IsarCore.writeLong(writer, 4, object.strokeCount);
  IsarCore.writeLong(writer, 5, object.grade);
  IsarCore.writeLong(writer, 6, object.jlptOld);
  IsarCore.writeLong(writer, 7, object.jlptNew);
  IsarCore.writeLong(writer, 8, object.klc);
  IsarCore.writeLong(writer, 9, object.wanikani);
  IsarCore.writeLong(writer, 10, object.rtkOld);
  IsarCore.writeLong(writer, 11, object.rtkNew);
  IsarCore.writeDouble(writer, 12, object.kanken);
  {
    final list = object.meanings;
    final listWriter = IsarCore.beginList(writer, 13, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializeMeaning(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  {
    final list = object.readings;
    final listWriter = IsarCore.beginList(writer, 14, list.length);
    for (var i = 0; i < list.length; i++) {
      {
        final value = list[i];
        final objectWriter = IsarCore.beginObject(listWriter, i);
        serializeReading(objectWriter, value);
        IsarCore.endObject(listWriter, objectWriter);
      }
    }
    IsarCore.endList(writer, listWriter);
  }
  {
    final list = object.antonyms;
    if (list == null) {
      IsarCore.writeNull(writer, 15);
    } else {
      final listWriter = IsarCore.beginList(writer, 15, list.length);
      for (var i = 0; i < list.length; i++) {
        IsarCore.writeString(listWriter, i, list[i]);
      }
      IsarCore.endList(writer, listWriter);
    }
  }
  {
    final list = object.synonyms;
    if (list == null) {
      IsarCore.writeNull(writer, 16);
    } else {
      final listWriter = IsarCore.beginList(writer, 16, list.length);
      for (var i = 0; i < list.length; i++) {
        IsarCore.writeString(listWriter, i, list[i]);
      }
      IsarCore.endList(writer, listWriter);
    }
  }
  {
    final list = object.lookalikes;
    if (list == null) {
      IsarCore.writeNull(writer, 17);
    } else {
      final listWriter = IsarCore.beginList(writer, 17, list.length);
      for (var i = 0; i < list.length; i++) {
        IsarCore.writeString(listWriter, i, list[i]);
      }
      IsarCore.endList(writer, listWriter);
    }
  }
  {
    final list = object.nanoris;
    final listWriter = IsarCore.beginList(writer, 18, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeString(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  return object.id;
}

@isarProtected
Kanjidic2 deserializeKanjidic2(IsarReader reader) {
  final String _character;
  _character = IsarCore.readString(reader, 1) ?? '';
  final int _frequency;
  _frequency = IsarCore.readLong(reader, 3);
  final int _strokeCount;
  _strokeCount = IsarCore.readLong(reader, 4);
  final int _grade;
  _grade = IsarCore.readLong(reader, 5);
  final int _jlptOld;
  _jlptOld = IsarCore.readLong(reader, 6);
  final int _jlptNew;
  _jlptNew = IsarCore.readLong(reader, 7);
  final int _klc;
  _klc = IsarCore.readLong(reader, 8);
  final int _wanikani;
  _wanikani = IsarCore.readLong(reader, 9);
  final int _rtkOld;
  _rtkOld = IsarCore.readLong(reader, 10);
  final int _rtkNew;
  _rtkNew = IsarCore.readLong(reader, 11);
  final double _kanken;
  _kanken = IsarCore.readDouble(reader, 12);
  final List<String>? _antonyms;
  {
    final length = IsarCore.readList(reader, 15, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _antonyms = null;
      } else {
        final list = List<String>.filled(length, '', growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readString(reader, i) ?? '';
        }
        IsarCore.freeReader(reader);
        _antonyms = list;
      }
    }
  }
  final List<String>? _synonyms;
  {
    final length = IsarCore.readList(reader, 16, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _synonyms = null;
      } else {
        final list = List<String>.filled(length, '', growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readString(reader, i) ?? '';
        }
        IsarCore.freeReader(reader);
        _synonyms = list;
      }
    }
  }
  final List<String>? _lookalikes;
  {
    final length = IsarCore.readList(reader, 17, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _lookalikes = null;
      } else {
        final list = List<String>.filled(length, '', growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readString(reader, i) ?? '';
        }
        IsarCore.freeReader(reader);
        _lookalikes = list;
      }
    }
  }
  final List<String> _nanoris;
  {
    final length = IsarCore.readList(reader, 18, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _nanoris = const <String>[];
      } else {
        final list = List<String>.filled(length, '', growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readString(reader, i) ?? '';
        }
        IsarCore.freeReader(reader);
        _nanoris = list;
      }
    }
  }
  final object = Kanjidic2(
    character: _character,
    frequency: _frequency,
    strokeCount: _strokeCount,
    grade: _grade,
    jlptOld: _jlptOld,
    jlptNew: _jlptNew,
    klc: _klc,
    wanikani: _wanikani,
    rtkOld: _rtkOld,
    rtkNew: _rtkNew,
    kanken: _kanken,
    antonyms: _antonyms,
    synonyms: _synonyms,
    lookalikes: _lookalikes,
    nanoris: _nanoris,
  );
  object.id = IsarCore.readId(reader);
  {
    final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        object.variants = const <JIS>[];
      } else {
        final list = List<JIS>.filled(length, JIS(), growable: true);
        for (var i = 0; i < length; i++) {
          {
            final objectReader = IsarCore.readObject(reader, i);
            if (objectReader.isNull) {
              list[i] = JIS();
            } else {
              final embedded = deserializeJIS(objectReader);
              IsarCore.freeReader(objectReader);
              list[i] = embedded;
            }
          }
        }
        IsarCore.freeReader(reader);
        object.variants = list;
      }
    }
  }
  {
    final length = IsarCore.readList(reader, 13, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        object.meanings = const <Meaning>[];
      } else {
        final list = List<Meaning>.filled(length, Meaning(), growable: true);
        for (var i = 0; i < length; i++) {
          {
            final objectReader = IsarCore.readObject(reader, i);
            if (objectReader.isNull) {
              list[i] = Meaning();
            } else {
              final embedded = deserializeMeaning(objectReader);
              IsarCore.freeReader(objectReader);
              list[i] = embedded;
            }
          }
        }
        IsarCore.freeReader(reader);
        object.meanings = list;
      }
    }
  }
  {
    final length = IsarCore.readList(reader, 14, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        object.readings = const <Reading>[];
      } else {
        final list = List<Reading>.filled(length, Reading(), growable: true);
        for (var i = 0; i < length; i++) {
          {
            final objectReader = IsarCore.readObject(reader, i);
            if (objectReader.isNull) {
              list[i] = Reading();
            } else {
              final embedded = deserializeReading(objectReader);
              IsarCore.freeReader(objectReader);
              list[i] = embedded;
            }
          }
        }
        IsarCore.freeReader(reader);
        object.readings = list;
      }
    }
  }
  return object;
}

@isarProtected
dynamic deserializeKanjidic2Prop(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      {
        final length = IsarCore.readList(reader, 2, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <JIS>[];
          } else {
            final list = List<JIS>.filled(length, JIS(), growable: true);
            for (var i = 0; i < length; i++) {
              {
                final objectReader = IsarCore.readObject(reader, i);
                if (objectReader.isNull) {
                  list[i] = JIS();
                } else {
                  final embedded = deserializeJIS(objectReader);
                  IsarCore.freeReader(objectReader);
                  list[i] = embedded;
                }
              }
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 3:
      return IsarCore.readLong(reader, 3);
    case 4:
      return IsarCore.readLong(reader, 4);
    case 5:
      return IsarCore.readLong(reader, 5);
    case 6:
      return IsarCore.readLong(reader, 6);
    case 7:
      return IsarCore.readLong(reader, 7);
    case 8:
      return IsarCore.readLong(reader, 8);
    case 9:
      return IsarCore.readLong(reader, 9);
    case 10:
      return IsarCore.readLong(reader, 10);
    case 11:
      return IsarCore.readLong(reader, 11);
    case 12:
      return IsarCore.readDouble(reader, 12);
    case 13:
      {
        final length = IsarCore.readList(reader, 13, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <Meaning>[];
          } else {
            final list =
                List<Meaning>.filled(length, Meaning(), growable: true);
            for (var i = 0; i < length; i++) {
              {
                final objectReader = IsarCore.readObject(reader, i);
                if (objectReader.isNull) {
                  list[i] = Meaning();
                } else {
                  final embedded = deserializeMeaning(objectReader);
                  IsarCore.freeReader(objectReader);
                  list[i] = embedded;
                }
              }
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 14:
      {
        final length = IsarCore.readList(reader, 14, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <Reading>[];
          } else {
            final list =
                List<Reading>.filled(length, Reading(), growable: true);
            for (var i = 0; i < length; i++) {
              {
                final objectReader = IsarCore.readObject(reader, i);
                if (objectReader.isNull) {
                  list[i] = Reading();
                } else {
                  final embedded = deserializeReading(objectReader);
                  IsarCore.freeReader(objectReader);
                  list[i] = embedded;
                }
              }
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 15:
      {
        final length = IsarCore.readList(reader, 15, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return null;
          } else {
            final list = List<String>.filled(length, '', growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readString(reader, i) ?? '';
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 16:
      {
        final length = IsarCore.readList(reader, 16, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return null;
          } else {
            final list = List<String>.filled(length, '', growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readString(reader, i) ?? '';
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 17:
      {
        final length = IsarCore.readList(reader, 17, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return null;
          } else {
            final list = List<String>.filled(length, '', growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readString(reader, i) ?? '';
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    case 18:
      {
        final length = IsarCore.readList(reader, 18, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <String>[];
          } else {
            final list = List<String>.filled(length, '', growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readString(reader, i) ?? '';
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _Kanjidic2Update {
  bool call({
    required int id,
    String? character,
    int? frequency,
    int? strokeCount,
    int? grade,
    int? jlptOld,
    int? jlptNew,
    int? klc,
    int? wanikani,
    int? rtkOld,
    int? rtkNew,
    double? kanken,
  });
}

class _Kanjidic2UpdateImpl implements _Kanjidic2Update {
  const _Kanjidic2UpdateImpl(this.collection);

  final IsarCollection<int, Kanjidic2> collection;

  @override
  bool call({
    required int id,
    Object? character = ignore,
    Object? frequency = ignore,
    Object? strokeCount = ignore,
    Object? grade = ignore,
    Object? jlptOld = ignore,
    Object? jlptNew = ignore,
    Object? klc = ignore,
    Object? wanikani = ignore,
    Object? rtkOld = ignore,
    Object? rtkNew = ignore,
    Object? kanken = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (character != ignore) 1: character as String?,
          if (frequency != ignore) 3: frequency as int?,
          if (strokeCount != ignore) 4: strokeCount as int?,
          if (grade != ignore) 5: grade as int?,
          if (jlptOld != ignore) 6: jlptOld as int?,
          if (jlptNew != ignore) 7: jlptNew as int?,
          if (klc != ignore) 8: klc as int?,
          if (wanikani != ignore) 9: wanikani as int?,
          if (rtkOld != ignore) 10: rtkOld as int?,
          if (rtkNew != ignore) 11: rtkNew as int?,
          if (kanken != ignore) 12: kanken as double?,
        }) >
        0;
  }
}

sealed class _Kanjidic2UpdateAll {
  int call({
    required List<int> id,
    String? character,
    int? frequency,
    int? strokeCount,
    int? grade,
    int? jlptOld,
    int? jlptNew,
    int? klc,
    int? wanikani,
    int? rtkOld,
    int? rtkNew,
    double? kanken,
  });
}

class _Kanjidic2UpdateAllImpl implements _Kanjidic2UpdateAll {
  const _Kanjidic2UpdateAllImpl(this.collection);

  final IsarCollection<int, Kanjidic2> collection;

  @override
  int call({
    required List<int> id,
    Object? character = ignore,
    Object? frequency = ignore,
    Object? strokeCount = ignore,
    Object? grade = ignore,
    Object? jlptOld = ignore,
    Object? jlptNew = ignore,
    Object? klc = ignore,
    Object? wanikani = ignore,
    Object? rtkOld = ignore,
    Object? rtkNew = ignore,
    Object? kanken = ignore,
  }) {
    return collection.updateProperties(id, {
      if (character != ignore) 1: character as String?,
      if (frequency != ignore) 3: frequency as int?,
      if (strokeCount != ignore) 4: strokeCount as int?,
      if (grade != ignore) 5: grade as int?,
      if (jlptOld != ignore) 6: jlptOld as int?,
      if (jlptNew != ignore) 7: jlptNew as int?,
      if (klc != ignore) 8: klc as int?,
      if (wanikani != ignore) 9: wanikani as int?,
      if (rtkOld != ignore) 10: rtkOld as int?,
      if (rtkNew != ignore) 11: rtkNew as int?,
      if (kanken != ignore) 12: kanken as double?,
    });
  }
}

extension Kanjidic2Update on IsarCollection<int, Kanjidic2> {
  _Kanjidic2Update get update => _Kanjidic2UpdateImpl(this);

  _Kanjidic2UpdateAll get updateAll => _Kanjidic2UpdateAllImpl(this);
}

sealed class _Kanjidic2QueryUpdate {
  int call({
    String? character,
    int? frequency,
    int? strokeCount,
    int? grade,
    int? jlptOld,
    int? jlptNew,
    int? klc,
    int? wanikani,
    int? rtkOld,
    int? rtkNew,
    double? kanken,
  });
}

class _Kanjidic2QueryUpdateImpl implements _Kanjidic2QueryUpdate {
  const _Kanjidic2QueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Kanjidic2> query;
  final int? limit;

  @override
  int call({
    Object? character = ignore,
    Object? frequency = ignore,
    Object? strokeCount = ignore,
    Object? grade = ignore,
    Object? jlptOld = ignore,
    Object? jlptNew = ignore,
    Object? klc = ignore,
    Object? wanikani = ignore,
    Object? rtkOld = ignore,
    Object? rtkNew = ignore,
    Object? kanken = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (character != ignore) 1: character as String?,
      if (frequency != ignore) 3: frequency as int?,
      if (strokeCount != ignore) 4: strokeCount as int?,
      if (grade != ignore) 5: grade as int?,
      if (jlptOld != ignore) 6: jlptOld as int?,
      if (jlptNew != ignore) 7: jlptNew as int?,
      if (klc != ignore) 8: klc as int?,
      if (wanikani != ignore) 9: wanikani as int?,
      if (rtkOld != ignore) 10: rtkOld as int?,
      if (rtkNew != ignore) 11: rtkNew as int?,
      if (kanken != ignore) 12: kanken as double?,
    });
  }
}

extension Kanjidic2QueryUpdate on IsarQuery<Kanjidic2> {
  _Kanjidic2QueryUpdate get updateFirst =>
      _Kanjidic2QueryUpdateImpl(this, limit: 1);

  _Kanjidic2QueryUpdate get updateAll => _Kanjidic2QueryUpdateImpl(this);
}

class _Kanjidic2QueryBuilderUpdateImpl implements _Kanjidic2QueryUpdate {
  const _Kanjidic2QueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Kanjidic2, Kanjidic2, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? character = ignore,
    Object? frequency = ignore,
    Object? strokeCount = ignore,
    Object? grade = ignore,
    Object? jlptOld = ignore,
    Object? jlptNew = ignore,
    Object? klc = ignore,
    Object? wanikani = ignore,
    Object? rtkOld = ignore,
    Object? rtkNew = ignore,
    Object? kanken = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (character != ignore) 1: character as String?,
        if (frequency != ignore) 3: frequency as int?,
        if (strokeCount != ignore) 4: strokeCount as int?,
        if (grade != ignore) 5: grade as int?,
        if (jlptOld != ignore) 6: jlptOld as int?,
        if (jlptNew != ignore) 7: jlptNew as int?,
        if (klc != ignore) 8: klc as int?,
        if (wanikani != ignore) 9: wanikani as int?,
        if (rtkOld != ignore) 10: rtkOld as int?,
        if (rtkNew != ignore) 11: rtkNew as int?,
        if (kanken != ignore) 12: kanken as double?,
      });
    } finally {
      q.close();
    }
  }
}

extension Kanjidic2QueryBuilderUpdate
    on QueryBuilder<Kanjidic2, Kanjidic2, QOperations> {
  _Kanjidic2QueryUpdate get updateFirst =>
      _Kanjidic2QueryBuilderUpdateImpl(this, limit: 1);

  _Kanjidic2QueryUpdate get updateAll => _Kanjidic2QueryBuilderUpdateImpl(this);
}

extension Kanjidic2QueryFilter
    on QueryBuilder<Kanjidic2, Kanjidic2, QFilterCondition> {
  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      characterGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      characterGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      characterLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      characterIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> variantsIsEmpty() {
    return not().variantsIsNotEmpty();
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      variantsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 2, value: null),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> frequencyEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      frequencyGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      frequencyGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> frequencyLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      frequencyLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> frequencyBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> strokeCountEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      strokeCountGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      strokeCountGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> strokeCountLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      strokeCountLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> strokeCountBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> gradeEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> gradeGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      gradeGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> gradeLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      gradeLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> gradeBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptOldEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptOldGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      jlptOldGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptOldLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      jlptOldLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptOldBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptNewEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptNewGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      jlptNewGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptNewLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      jlptNewLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptNewBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> klcEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> klcGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      klcGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> klcLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      klcLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> klcBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> wanikaniEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> wanikaniGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      wanikaniGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> wanikaniLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      wanikaniLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> wanikaniBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 9,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkOldEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 10,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkOldGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 10,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      rtkOldGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 10,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkOldLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 10,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      rtkOldLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 10,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkOldBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 10,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkNewEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkNewGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 11,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      rtkNewGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 11,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkNewLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 11,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      rtkNewLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 11,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkNewBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 11,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      kankenGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      kankenLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 12,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 12,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> meaningsIsEmpty() {
    return not().meaningsIsNotEmpty();
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      meaningsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 13, value: null),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> readingsIsEmpty() {
    return not().readingsIsNotEmpty();
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      readingsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 14, value: null),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> antonymsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsElementGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsElementGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsElementLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsElementLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsElementBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 15,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 15,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 15,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 15,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> antonymsIsEmpty() {
    return not().group(
      (q) => q.antonymsIsNull().or().antonymsIsNotEmpty(),
    );
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      antonymsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 15, value: null),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> synonymsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 16));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 16));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsElementGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsElementGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsElementLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsElementLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsElementBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 16,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 16,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 16,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 16,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 16,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> synonymsIsEmpty() {
    return not().group(
      (q) => q.synonymsIsNull().or().synonymsIsNotEmpty(),
    );
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      synonymsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 16, value: null),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> lookalikesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 17));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 17));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesElementGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesElementGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesElementLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesElementLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesElementBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 17,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 17,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 17,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 17,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesIsEmpty() {
    return not().group(
      (q) => q.lookalikesIsNull().or().lookalikesIsNotEmpty(),
    );
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      lookalikesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 17, value: null),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 18,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 18,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 18,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 18,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 18,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> nanorisIsEmpty() {
    return not().nanorisIsNotEmpty();
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 18, value: null),
      );
    });
  }
}

extension Kanjidic2QueryObject
    on QueryBuilder<Kanjidic2, Kanjidic2, QFilterCondition> {}

extension Kanjidic2QuerySortBy on QueryBuilder<Kanjidic2, Kanjidic2, QSortBy> {
  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByCharacter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByCharacterDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByFrequencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByStrokeCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByGrade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByGradeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByJlptOld() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByJlptOldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByJlptNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByJlptNewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByKlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByKlcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByWanikani() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByWanikaniDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByRtkOld() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByRtkOldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByRtkNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByRtkNewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByKanken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByKankenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }
}

extension Kanjidic2QuerySortThenBy
    on QueryBuilder<Kanjidic2, Kanjidic2, QSortThenBy> {
  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByCharacter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByCharacterDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByFrequencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByStrokeCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByGrade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByGradeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByJlptOld() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByJlptOldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByJlptNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByJlptNewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByKlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByKlcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByWanikani() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByWanikaniDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByRtkOld() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByRtkOldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByRtkNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByRtkNewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByKanken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByKankenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc);
    });
  }
}

extension Kanjidic2QueryWhereDistinct
    on QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> {
  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByCharacter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByGrade() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByJlptOld() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByJlptNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByKlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByWanikani() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByRtkOld() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(10);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByRtkNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(11);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByKanken() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(12);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByAntonyms() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(15);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctBySynonyms() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(16);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByLookalikes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(17);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterDistinct> distinctByNanoris() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(18);
    });
  }
}

extension Kanjidic2QueryProperty1
    on QueryBuilder<Kanjidic2, Kanjidic2, QProperty> {
  QueryBuilder<Kanjidic2, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Kanjidic2, String, QAfterProperty> characterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Kanjidic2, List<JIS>, QAfterProperty> variantsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Kanjidic2, int, QAfterProperty> frequencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Kanjidic2, int, QAfterProperty> strokeCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Kanjidic2, int, QAfterProperty> gradeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<Kanjidic2, int, QAfterProperty> jlptOldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<Kanjidic2, int, QAfterProperty> jlptNewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<Kanjidic2, int, QAfterProperty> klcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<Kanjidic2, int, QAfterProperty> wanikaniProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<Kanjidic2, int, QAfterProperty> rtkOldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<Kanjidic2, int, QAfterProperty> rtkNewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<Kanjidic2, double, QAfterProperty> kankenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<Kanjidic2, List<Meaning>, QAfterProperty> meaningsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<Kanjidic2, List<Reading>, QAfterProperty> readingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<Kanjidic2, List<String>?, QAfterProperty> antonymsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<Kanjidic2, List<String>?, QAfterProperty> synonymsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<Kanjidic2, List<String>?, QAfterProperty> lookalikesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }

  QueryBuilder<Kanjidic2, List<String>, QAfterProperty> nanorisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(18);
    });
  }
}

extension Kanjidic2QueryProperty2<R>
    on QueryBuilder<Kanjidic2, R, QAfterProperty> {
  QueryBuilder<Kanjidic2, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Kanjidic2, (R, String), QAfterProperty> characterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Kanjidic2, (R, List<JIS>), QAfterProperty> variantsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Kanjidic2, (R, int), QAfterProperty> frequencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Kanjidic2, (R, int), QAfterProperty> strokeCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Kanjidic2, (R, int), QAfterProperty> gradeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<Kanjidic2, (R, int), QAfterProperty> jlptOldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<Kanjidic2, (R, int), QAfterProperty> jlptNewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<Kanjidic2, (R, int), QAfterProperty> klcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<Kanjidic2, (R, int), QAfterProperty> wanikaniProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<Kanjidic2, (R, int), QAfterProperty> rtkOldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<Kanjidic2, (R, int), QAfterProperty> rtkNewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<Kanjidic2, (R, double), QAfterProperty> kankenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<Kanjidic2, (R, List<Meaning>), QAfterProperty>
      meaningsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<Kanjidic2, (R, List<Reading>), QAfterProperty>
      readingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<Kanjidic2, (R, List<String>?), QAfterProperty>
      antonymsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<Kanjidic2, (R, List<String>?), QAfterProperty>
      synonymsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<Kanjidic2, (R, List<String>?), QAfterProperty>
      lookalikesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }

  QueryBuilder<Kanjidic2, (R, List<String>), QAfterProperty> nanorisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(18);
    });
  }
}

extension Kanjidic2QueryProperty3<R1, R2>
    on QueryBuilder<Kanjidic2, (R1, R2), QAfterProperty> {
  QueryBuilder<Kanjidic2, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, String), QOperations> characterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, List<JIS>), QOperations> variantsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, int), QOperations> frequencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, int), QOperations> strokeCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, int), QOperations> gradeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, int), QOperations> jlptOldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, int), QOperations> jlptNewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, int), QOperations> klcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, int), QOperations> wanikaniProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, int), QOperations> rtkOldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, int), QOperations> rtkNewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, double), QOperations> kankenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, List<Meaning>), QOperations>
      meaningsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, List<Reading>), QOperations>
      readingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, List<String>?), QOperations>
      antonymsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, List<String>?), QOperations>
      synonymsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, List<String>?), QOperations>
      lookalikesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }

  QueryBuilder<Kanjidic2, (R1, R2, List<String>), QOperations>
      nanorisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(18);
    });
  }
}

// **************************************************************************
// _IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const JISSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'JIS',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'encoding',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'value',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, JIS>(
    serialize: serializeJIS,
    deserialize: deserializeJIS,
  ),
);

@isarProtected
int serializeJIS(IsarWriter writer, JIS object) {
  {
    final value = object.encoding;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  {
    final value = object.value;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  return 0;
}

@isarProtected
JIS deserializeJIS(IsarReader reader) {
  final String? _encoding;
  _encoding = IsarCore.readString(reader, 1);
  final String? _value;
  _value = IsarCore.readString(reader, 2);
  final object = JIS(
    encoding: _encoding,
    value: _value,
  );
  return object;
}

extension JISQueryFilter on QueryBuilder<JIS, JIS, QFilterCondition> {
  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }
}

extension JISQueryObject on QueryBuilder<JIS, JIS, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const ReadingSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Reading',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'rType',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'value',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, Reading>(
    serialize: serializeReading,
    deserialize: deserializeReading,
  ),
);

@isarProtected
int serializeReading(IsarWriter writer, Reading object) {
  {
    final value = object.rType;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  {
    final value = object.value;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  return 0;
}

@isarProtected
Reading deserializeReading(IsarReader reader) {
  final String? _rType;
  _rType = IsarCore.readString(reader, 1);
  final String? _value;
  _value = IsarCore.readString(reader, 2);
  final object = Reading(
    rType: _rType,
    value: _value,
  );
  return object;
}

extension ReadingQueryFilter
    on QueryBuilder<Reading, Reading, QFilterCondition> {
  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition>
      rTypeGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition>
      valueGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }
}

extension ReadingQueryObject
    on QueryBuilder<Reading, Reading, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

const MeaningSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Meaning',
    embedded: true,
    properties: [
      IsarPropertySchema(
        name: 'language',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'meaning',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<void, Meaning>(
    serialize: serializeMeaning,
    deserialize: deserializeMeaning,
  ),
);

@isarProtected
int serializeMeaning(IsarWriter writer, Meaning object) {
  {
    final value = object.language;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  {
    final value = object.meaning;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  return 0;
}

@isarProtected
Meaning deserializeMeaning(IsarReader reader) {
  final String? _language;
  _language = IsarCore.readString(reader, 1);
  final String? _meaning;
  _meaning = IsarCore.readString(reader, 2);
  final object = Meaning(
    language: _language,
    meaning: _meaning,
  );
  return object;
}

extension MeaningQueryFilter
    on QueryBuilder<Meaning, Meaning, QFilterCondition> {
  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition>
      languageGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition>
      languageLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition>
      meaningGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition>
      meaningLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }
}

extension MeaningQueryObject
    on QueryBuilder<Meaning, Meaning, QFilterCondition> {}
