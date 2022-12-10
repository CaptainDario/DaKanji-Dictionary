// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetKanjidic2EntryCollection on Isar {
  IsarCollection<Kanjidic2Entry> get kanjidic2Entrys => this.collection();
}

const Kanjidic2EntrySchema = CollectionSchema(
  name: r'Kanjidic2Entry',
  id: 7191725766401544158,
  properties: {
    r'frequency': PropertySchema(
      id: 0,
      name: r'frequency',
      type: IsarType.long,
    ),
    r'grade': PropertySchema(
      id: 1,
      name: r'grade',
      type: IsarType.long,
    ),
    r'jlpt': PropertySchema(
      id: 2,
      name: r'jlpt',
      type: IsarType.long,
    ),
    r'literal': PropertySchema(
      id: 3,
      name: r'literal',
      type: IsarType.string,
    ),
    r'meanings': PropertySchema(
      id: 4,
      name: r'meanings',
      type: IsarType.objectList,
      target: r'Meaning',
    ),
    r'nanoris': PropertySchema(
      id: 5,
      name: r'nanoris',
      type: IsarType.stringList,
    ),
    r'readings': PropertySchema(
      id: 6,
      name: r'readings',
      type: IsarType.objectList,
      target: r'Reading',
    ),
    r'variants': PropertySchema(
      id: 7,
      name: r'variants',
      type: IsarType.objectList,
      target: r'JIS',
    )
  },
  estimateSize: _kanjidic2EntryEstimateSize,
  serialize: _kanjidic2EntrySerialize,
  deserialize: _kanjidic2EntryDeserialize,
  deserializeProp: _kanjidic2EntryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'JIS': JISSchema,
    r'Meaning': MeaningSchema,
    r'Reading': ReadingSchema
  },
  getId: _kanjidic2EntryGetId,
  getLinks: _kanjidic2EntryGetLinks,
  attach: _kanjidic2EntryAttach,
  version: '3.0.2',
);

int _kanjidic2EntryEstimateSize(
  Kanjidic2Entry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.literal.length * 3;
  bytesCount += 3 + object.meanings.length * 3;
  {
    final offsets = allOffsets[Meaning]!;
    for (var i = 0; i < object.meanings.length; i++) {
      final value = object.meanings[i];
      bytesCount += MeaningSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.nanoris.length * 3;
  {
    for (var i = 0; i < object.nanoris.length; i++) {
      final value = object.nanoris[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.readings.length * 3;
  {
    final offsets = allOffsets[Reading]!;
    for (var i = 0; i < object.readings.length; i++) {
      final value = object.readings[i];
      bytesCount += ReadingSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.variants.length * 3;
  {
    final offsets = allOffsets[JIS]!;
    for (var i = 0; i < object.variants.length; i++) {
      final value = object.variants[i];
      bytesCount += JISSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _kanjidic2EntrySerialize(
  Kanjidic2Entry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.frequency);
  writer.writeLong(offsets[1], object.grade);
  writer.writeLong(offsets[2], object.jlpt);
  writer.writeString(offsets[3], object.literal);
  writer.writeObjectList<Meaning>(
    offsets[4],
    allOffsets,
    MeaningSchema.serialize,
    object.meanings,
  );
  writer.writeStringList(offsets[5], object.nanoris);
  writer.writeObjectList<Reading>(
    offsets[6],
    allOffsets,
    ReadingSchema.serialize,
    object.readings,
  );
  writer.writeObjectList<JIS>(
    offsets[7],
    allOffsets,
    JISSchema.serialize,
    object.variants,
  );
}

Kanjidic2Entry _kanjidic2EntryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Kanjidic2Entry(
    frequency: reader.readLong(offsets[0]),
    grade: reader.readLong(offsets[1]),
    jlpt: reader.readLong(offsets[2]),
    literal: reader.readString(offsets[3]),
    nanoris: reader.readStringList(offsets[5]) ?? [],
  );
  object.id = id;
  object.meanings = reader.readObjectList<Meaning>(
        offsets[4],
        MeaningSchema.deserialize,
        allOffsets,
        Meaning(),
      ) ??
      [];
  object.readings = reader.readObjectList<Reading>(
        offsets[6],
        ReadingSchema.deserialize,
        allOffsets,
        Reading(),
      ) ??
      [];
  object.variants = reader.readObjectList<JIS>(
        offsets[7],
        JISSchema.deserialize,
        allOffsets,
        JIS(),
      ) ??
      [];
  return object;
}

P _kanjidic2EntryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readObjectList<Meaning>(
            offset,
            MeaningSchema.deserialize,
            allOffsets,
            Meaning(),
          ) ??
          []) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readObjectList<Reading>(
            offset,
            ReadingSchema.deserialize,
            allOffsets,
            Reading(),
          ) ??
          []) as P;
    case 7:
      return (reader.readObjectList<JIS>(
            offset,
            JISSchema.deserialize,
            allOffsets,
            JIS(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _kanjidic2EntryGetId(Kanjidic2Entry object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _kanjidic2EntryGetLinks(Kanjidic2Entry object) {
  return [];
}

void _kanjidic2EntryAttach(
    IsarCollection<dynamic> col, Id id, Kanjidic2Entry object) {
  object.id = id;
}

extension Kanjidic2EntryQueryWhereSort
    on QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QWhere> {
  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension Kanjidic2EntryQueryWhere
    on QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QWhereClause> {
  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension Kanjidic2EntryQueryFilter
    on QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QFilterCondition> {
  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      frequencyEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frequency',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      frequencyGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frequency',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      frequencyLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frequency',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      frequencyBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frequency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      gradeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grade',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      gradeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grade',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      gradeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grade',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      gradeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grade',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      jlptEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jlpt',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      jlptGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jlpt',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      jlptLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jlpt',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      jlptBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jlpt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      literalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'literal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      literalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'literal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      literalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'literal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      literalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'literal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      literalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'literal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      literalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'literal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      literalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'literal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      literalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'literal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      literalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'literal',
        value: '',
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      literalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'literal',
        value: '',
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      meaningsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meanings',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      meaningsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meanings',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      meaningsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meanings',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      meaningsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meanings',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      meaningsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meanings',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      meaningsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meanings',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nanoris',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nanoris',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nanoris',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nanoris',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nanoris',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nanoris',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nanoris',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nanoris',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nanoris',
        value: '',
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nanoris',
        value: '',
      ));
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nanoris',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nanoris',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nanoris',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nanoris',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nanoris',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      nanorisLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'nanoris',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      readingsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readings',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      readingsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readings',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      readingsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readings',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      readingsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readings',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      readingsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readings',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      readingsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readings',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      variantsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'variants',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      variantsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'variants',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      variantsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'variants',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      variantsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'variants',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      variantsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'variants',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      variantsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'variants',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension Kanjidic2EntryQueryObject
    on QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QFilterCondition> {
  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      meaningsElement(FilterQuery<Meaning> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'meanings');
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      readingsElement(FilterQuery<Reading> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'readings');
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterFilterCondition>
      variantsElement(FilterQuery<JIS> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'variants');
    });
  }
}

extension Kanjidic2EntryQueryLinks
    on QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QFilterCondition> {}

extension Kanjidic2EntryQuerySortBy
    on QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QSortBy> {
  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> sortByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy>
      sortByFrequencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> sortByGrade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grade', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> sortByGradeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grade', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> sortByJlpt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jlpt', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> sortByJlptDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jlpt', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> sortByLiteral() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'literal', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy>
      sortByLiteralDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'literal', Sort.desc);
    });
  }
}

extension Kanjidic2EntryQuerySortThenBy
    on QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QSortThenBy> {
  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> thenByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy>
      thenByFrequencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> thenByGrade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grade', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> thenByGradeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grade', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> thenByJlpt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jlpt', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> thenByJlptDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jlpt', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy> thenByLiteral() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'literal', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QAfterSortBy>
      thenByLiteralDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'literal', Sort.desc);
    });
  }
}

extension Kanjidic2EntryQueryWhereDistinct
    on QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QDistinct> {
  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QDistinct>
      distinctByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'frequency');
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QDistinct> distinctByGrade() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'grade');
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QDistinct> distinctByJlpt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jlpt');
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QDistinct> distinctByLiteral(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'literal', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QDistinct> distinctByNanoris() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nanoris');
    });
  }
}

extension Kanjidic2EntryQueryProperty
    on QueryBuilder<Kanjidic2Entry, Kanjidic2Entry, QQueryProperty> {
  QueryBuilder<Kanjidic2Entry, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Kanjidic2Entry, int, QQueryOperations> frequencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'frequency');
    });
  }

  QueryBuilder<Kanjidic2Entry, int, QQueryOperations> gradeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grade');
    });
  }

  QueryBuilder<Kanjidic2Entry, int, QQueryOperations> jlptProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jlpt');
    });
  }

  QueryBuilder<Kanjidic2Entry, String, QQueryOperations> literalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'literal');
    });
  }

  QueryBuilder<Kanjidic2Entry, List<Meaning>, QQueryOperations>
      meaningsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meanings');
    });
  }

  QueryBuilder<Kanjidic2Entry, List<String>, QQueryOperations>
      nanorisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nanoris');
    });
  }

  QueryBuilder<Kanjidic2Entry, List<Reading>, QQueryOperations>
      readingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'readings');
    });
  }

  QueryBuilder<Kanjidic2Entry, List<JIS>, QQueryOperations> variantsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'variants');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const JISSchema = Schema(
  name: r'JIS',
  id: 6041805603616425936,
  properties: {
    r'encoding': PropertySchema(
      id: 0,
      name: r'encoding',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 1,
      name: r'value',
      type: IsarType.string,
    )
  },
  estimateSize: _jISEstimateSize,
  serialize: _jISSerialize,
  deserialize: _jISDeserialize,
  deserializeProp: _jISDeserializeProp,
);

int _jISEstimateSize(
  JIS object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.encoding;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.value;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _jISSerialize(
  JIS object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.encoding);
  writer.writeString(offsets[1], object.value);
}

JIS _jISDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = JIS(
    encoding: reader.readStringOrNull(offsets[0]),
    value: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _jISDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension JISQueryFilter on QueryBuilder<JIS, JIS, QFilterCondition> {
  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'encoding',
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'encoding',
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'encoding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'encoding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'encoding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'encoding',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'encoding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'encoding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'encoding',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'encoding',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'encoding',
        value: '',
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> encodingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'encoding',
        value: '',
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'value',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<JIS, JIS, QAfterFilterCondition> valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'value',
        value: '',
      ));
    });
  }
}

extension JISQueryObject on QueryBuilder<JIS, JIS, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const ReadingSchema = Schema(
  name: r'Reading',
  id: -3353310682807968152,
  properties: {
    r'r_type': PropertySchema(
      id: 0,
      name: r'r_type',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 1,
      name: r'value',
      type: IsarType.string,
    )
  },
  estimateSize: _readingEstimateSize,
  serialize: _readingSerialize,
  deserialize: _readingDeserialize,
  deserializeProp: _readingDeserializeProp,
);

int _readingEstimateSize(
  Reading object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.r_type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.value;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _readingSerialize(
  Reading object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.r_type);
  writer.writeString(offsets[1], object.value);
}

Reading _readingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Reading(
    r_type: reader.readStringOrNull(offsets[0]),
    value: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _readingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ReadingQueryFilter
    on QueryBuilder<Reading, Reading, QFilterCondition> {
  QueryBuilder<Reading, Reading, QAfterFilterCondition> r_typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'r_type',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> r_typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'r_type',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> r_typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'r_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> r_typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'r_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> r_typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'r_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> r_typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'r_type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> r_typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'r_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> r_typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'r_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> r_typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'r_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> r_typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'r_type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> r_typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'r_type',
        value: '',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> r_typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'r_type',
        value: '',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'value',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'value',
        value: '',
      ));
    });
  }
}

extension ReadingQueryObject
    on QueryBuilder<Reading, Reading, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const MeaningSchema = Schema(
  name: r'Meaning',
  id: 1431589455991204997,
  properties: {
    r'language': PropertySchema(
      id: 0,
      name: r'language',
      type: IsarType.string,
    ),
    r'meaning': PropertySchema(
      id: 1,
      name: r'meaning',
      type: IsarType.string,
    )
  },
  estimateSize: _meaningEstimateSize,
  serialize: _meaningSerialize,
  deserialize: _meaningDeserialize,
  deserializeProp: _meaningDeserializeProp,
);

int _meaningEstimateSize(
  Meaning object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.language;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.meaning;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _meaningSerialize(
  Meaning object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.language);
  writer.writeString(offsets[1], object.meaning);
}

Meaning _meaningDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Meaning(
    language: reader.readStringOrNull(offsets[0]),
    meaning: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _meaningDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MeaningQueryFilter
    on QueryBuilder<Meaning, Meaning, QFilterCondition> {
  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'language',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'language',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'meaning',
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'meaning',
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meaning',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'meaning',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'meaning',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'meaning',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'meaning',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'meaning',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'meaning',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'meaning',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meaning',
        value: '',
      ));
    });
  }

  QueryBuilder<Meaning, Meaning, QAfterFilterCondition> meaningIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'meaning',
        value: '',
      ));
    });
  }
}

extension MeaningQueryObject
    on QueryBuilder<Meaning, Meaning, QFilterCondition> {}