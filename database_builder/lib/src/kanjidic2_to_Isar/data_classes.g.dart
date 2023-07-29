// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetKanjidic2Collection on Isar {
  IsarCollection<Kanjidic2> get kanjidic2s => this.collection();
}

const Kanjidic2Schema = CollectionSchema(
  name: r'Kanjidic2',
  id: -5066426234032528852,
  properties: {
    r'character': PropertySchema(
      id: 0,
      name: r'character',
      type: IsarType.string,
    ),
    r'frequency': PropertySchema(
      id: 1,
      name: r'frequency',
      type: IsarType.long,
    ),
    r'grade': PropertySchema(
      id: 2,
      name: r'grade',
      type: IsarType.long,
    ),
    r'jlptNew': PropertySchema(
      id: 3,
      name: r'jlptNew',
      type: IsarType.long,
    ),
    r'jlptOld': PropertySchema(
      id: 4,
      name: r'jlptOld',
      type: IsarType.long,
    ),
    r'kanken': PropertySchema(
      id: 5,
      name: r'kanken',
      type: IsarType.string,
    ),
    r'klc': PropertySchema(
      id: 6,
      name: r'klc',
      type: IsarType.long,
    ),
    r'meanings': PropertySchema(
      id: 7,
      name: r'meanings',
      type: IsarType.objectList,
      target: r'Meaning',
    ),
    r'nanoris': PropertySchema(
      id: 8,
      name: r'nanoris',
      type: IsarType.stringList,
    ),
    r'readings': PropertySchema(
      id: 9,
      name: r'readings',
      type: IsarType.objectList,
      target: r'Reading',
    ),
    r'rtkNew': PropertySchema(
      id: 10,
      name: r'rtkNew',
      type: IsarType.long,
    ),
    r'rtkOld': PropertySchema(
      id: 11,
      name: r'rtkOld',
      type: IsarType.long,
    ),
    r'strokeCount': PropertySchema(
      id: 12,
      name: r'strokeCount',
      type: IsarType.long,
    ),
    r'variants': PropertySchema(
      id: 13,
      name: r'variants',
      type: IsarType.objectList,
      target: r'JIS',
    ),
    r'wanikani': PropertySchema(
      id: 14,
      name: r'wanikani',
      type: IsarType.long,
    )
  },
  estimateSize: _kanjidic2EstimateSize,
  serialize: _kanjidic2Serialize,
  deserialize: _kanjidic2Deserialize,
  deserializeProp: _kanjidic2DeserializeProp,
  idName: r'id',
  indexes: {
    r'character': IndexSchema(
      id: 1564562395447198696,
      name: r'character',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'character',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'JIS': JISSchema,
    r'Meaning': MeaningSchema,
    r'Reading': ReadingSchema
  },
  getId: _kanjidic2GetId,
  getLinks: _kanjidic2GetLinks,
  attach: _kanjidic2Attach,
  version: '3.1.0+1',
);

int _kanjidic2EstimateSize(
  Kanjidic2 object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.character.length * 3;
  bytesCount += 3 + object.kanken.length * 3;
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

void _kanjidic2Serialize(
  Kanjidic2 object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.character);
  writer.writeLong(offsets[1], object.frequency);
  writer.writeLong(offsets[2], object.grade);
  writer.writeLong(offsets[3], object.jlptNew);
  writer.writeLong(offsets[4], object.jlptOld);
  writer.writeString(offsets[5], object.kanken);
  writer.writeLong(offsets[6], object.klc);
  writer.writeObjectList<Meaning>(
    offsets[7],
    allOffsets,
    MeaningSchema.serialize,
    object.meanings,
  );
  writer.writeStringList(offsets[8], object.nanoris);
  writer.writeObjectList<Reading>(
    offsets[9],
    allOffsets,
    ReadingSchema.serialize,
    object.readings,
  );
  writer.writeLong(offsets[10], object.rtkNew);
  writer.writeLong(offsets[11], object.rtkOld);
  writer.writeLong(offsets[12], object.strokeCount);
  writer.writeObjectList<JIS>(
    offsets[13],
    allOffsets,
    JISSchema.serialize,
    object.variants,
  );
  writer.writeLong(offsets[14], object.wanikani);
}

Kanjidic2 _kanjidic2Deserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Kanjidic2(
    character: reader.readString(offsets[0]),
    frequency: reader.readLong(offsets[1]),
    grade: reader.readLong(offsets[2]),
    jlptNew: reader.readLong(offsets[3]),
    jlptOld: reader.readLong(offsets[4]),
    kanken: reader.readString(offsets[5]),
    klc: reader.readLong(offsets[6]),
    nanoris: reader.readStringList(offsets[8]) ?? [],
    rtkNew: reader.readLong(offsets[10]),
    rtkOld: reader.readLong(offsets[11]),
    strokeCount: reader.readLong(offsets[12]),
    wanikani: reader.readLong(offsets[14]),
  );
  object.id = id;
  object.meanings = reader.readObjectList<Meaning>(
        offsets[7],
        MeaningSchema.deserialize,
        allOffsets,
        Meaning(),
      ) ??
      [];
  object.readings = reader.readObjectList<Reading>(
        offsets[9],
        ReadingSchema.deserialize,
        allOffsets,
        Reading(),
      ) ??
      [];
  object.variants = reader.readObjectList<JIS>(
        offsets[13],
        JISSchema.deserialize,
        allOffsets,
        JIS(),
      ) ??
      [];
  return object;
}

P _kanjidic2DeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readObjectList<Meaning>(
            offset,
            MeaningSchema.deserialize,
            allOffsets,
            Meaning(),
          ) ??
          []) as P;
    case 8:
      return (reader.readStringList(offset) ?? []) as P;
    case 9:
      return (reader.readObjectList<Reading>(
            offset,
            ReadingSchema.deserialize,
            allOffsets,
            Reading(),
          ) ??
          []) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readObjectList<JIS>(
            offset,
            JISSchema.deserialize,
            allOffsets,
            JIS(),
          ) ??
          []) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _kanjidic2GetId(Kanjidic2 object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _kanjidic2GetLinks(Kanjidic2 object) {
  return [];
}

void _kanjidic2Attach(IsarCollection<dynamic> col, Id id, Kanjidic2 object) {
  object.id = id;
}

extension Kanjidic2QueryWhereSort
    on QueryBuilder<Kanjidic2, Kanjidic2, QWhere> {
  QueryBuilder<Kanjidic2, Kanjidic2, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension Kanjidic2QueryWhere
    on QueryBuilder<Kanjidic2, Kanjidic2, QWhereClause> {
  QueryBuilder<Kanjidic2, Kanjidic2, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterWhereClause> idBetween(
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterWhereClause> characterEqualTo(
      String character) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'character',
        value: [character],
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterWhereClause> characterNotEqualTo(
      String character) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'character',
              lower: [],
              upper: [character],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'character',
              lower: [character],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'character',
              lower: [character],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'character',
              lower: [],
              upper: [character],
              includeUpper: false,
            ));
      }
    });
  }
}

extension Kanjidic2QueryFilter
    on QueryBuilder<Kanjidic2, Kanjidic2, QFilterCondition> {
  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'character',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      characterGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'character',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'character',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'character',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'character',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'character',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'character',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'character',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> characterIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'character',
        value: '',
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      characterIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'character',
        value: '',
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> frequencyEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frequency',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> frequencyLessThan(
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> frequencyBetween(
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> gradeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grade',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> gradeGreaterThan(
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> gradeLessThan(
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> gradeBetween(
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptNewEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jlptNew',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptNewGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jlptNew',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptNewLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jlptNew',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptNewBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jlptNew',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptOldEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jlptOld',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptOldGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jlptOld',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptOldLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jlptOld',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> jlptOldBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jlptOld',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kanken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kanken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kanken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kanken',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kanken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kanken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kanken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kanken',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kanken',
        value: '',
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> kankenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kanken',
        value: '',
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> klcEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'klc',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> klcGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'klc',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> klcLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'klc',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> klcBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'klc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> meaningsIsEmpty() {
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nanoris',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nanoris',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nanoris',
        value: '',
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      nanorisElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nanoris',
        value: '',
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> nanorisIsEmpty() {
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> readingsIsEmpty() {
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkNewEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rtkNew',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkNewGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rtkNew',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkNewLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rtkNew',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkNewBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rtkNew',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkOldEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rtkOld',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkOldGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rtkOld',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkOldLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rtkOld',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> rtkOldBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rtkOld',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> strokeCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'strokeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
      strokeCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'strokeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> strokeCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'strokeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> strokeCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'strokeCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> variantsIsEmpty() {
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition>
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

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> wanikaniEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wanikani',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> wanikaniGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wanikani',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> wanikaniLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wanikani',
        value: value,
      ));
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> wanikaniBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wanikani',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension Kanjidic2QueryObject
    on QueryBuilder<Kanjidic2, Kanjidic2, QFilterCondition> {
  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> meaningsElement(
      FilterQuery<Meaning> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'meanings');
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> readingsElement(
      FilterQuery<Reading> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'readings');
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterFilterCondition> variantsElement(
      FilterQuery<JIS> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'variants');
    });
  }
}

extension Kanjidic2QueryLinks
    on QueryBuilder<Kanjidic2, Kanjidic2, QFilterCondition> {}

extension Kanjidic2QuerySortBy on QueryBuilder<Kanjidic2, Kanjidic2, QSortBy> {
  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByCharacter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'character', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByCharacterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'character', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByFrequencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByGrade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grade', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByGradeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grade', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByJlptNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jlptNew', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByJlptNewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jlptNew', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByJlptOld() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jlptOld', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByJlptOldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jlptOld', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByKanken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanken', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByKankenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanken', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByKlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'klc', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByKlcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'klc', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByRtkNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rtkNew', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByRtkNewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rtkNew', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByRtkOld() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rtkOld', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByRtkOldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rtkOld', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'strokeCount', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByStrokeCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'strokeCount', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByWanikani() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wanikani', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> sortByWanikaniDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wanikani', Sort.desc);
    });
  }
}

extension Kanjidic2QuerySortThenBy
    on QueryBuilder<Kanjidic2, Kanjidic2, QSortThenBy> {
  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByCharacter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'character', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByCharacterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'character', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByFrequencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByGrade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grade', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByGradeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grade', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByJlptNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jlptNew', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByJlptNewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jlptNew', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByJlptOld() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jlptOld', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByJlptOldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jlptOld', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByKanken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanken', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByKankenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanken', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByKlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'klc', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByKlcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'klc', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByRtkNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rtkNew', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByRtkNewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rtkNew', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByRtkOld() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rtkOld', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByRtkOldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rtkOld', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'strokeCount', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByStrokeCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'strokeCount', Sort.desc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByWanikani() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wanikani', Sort.asc);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QAfterSortBy> thenByWanikaniDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wanikani', Sort.desc);
    });
  }
}

extension Kanjidic2QueryWhereDistinct
    on QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> {
  QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> distinctByCharacter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'character', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> distinctByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'frequency');
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> distinctByGrade() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'grade');
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> distinctByJlptNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jlptNew');
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> distinctByJlptOld() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jlptOld');
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> distinctByKanken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kanken', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> distinctByKlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'klc');
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> distinctByNanoris() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nanoris');
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> distinctByRtkNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rtkNew');
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> distinctByRtkOld() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rtkOld');
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> distinctByStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'strokeCount');
    });
  }

  QueryBuilder<Kanjidic2, Kanjidic2, QDistinct> distinctByWanikani() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wanikani');
    });
  }
}

extension Kanjidic2QueryProperty
    on QueryBuilder<Kanjidic2, Kanjidic2, QQueryProperty> {
  QueryBuilder<Kanjidic2, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Kanjidic2, String, QQueryOperations> characterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'character');
    });
  }

  QueryBuilder<Kanjidic2, int, QQueryOperations> frequencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'frequency');
    });
  }

  QueryBuilder<Kanjidic2, int, QQueryOperations> gradeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grade');
    });
  }

  QueryBuilder<Kanjidic2, int, QQueryOperations> jlptNewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jlptNew');
    });
  }

  QueryBuilder<Kanjidic2, int, QQueryOperations> jlptOldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jlptOld');
    });
  }

  QueryBuilder<Kanjidic2, String, QQueryOperations> kankenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kanken');
    });
  }

  QueryBuilder<Kanjidic2, int, QQueryOperations> klcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'klc');
    });
  }

  QueryBuilder<Kanjidic2, List<Meaning>, QQueryOperations> meaningsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meanings');
    });
  }

  QueryBuilder<Kanjidic2, List<String>, QQueryOperations> nanorisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nanoris');
    });
  }

  QueryBuilder<Kanjidic2, List<Reading>, QQueryOperations> readingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'readings');
    });
  }

  QueryBuilder<Kanjidic2, int, QQueryOperations> rtkNewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rtkNew');
    });
  }

  QueryBuilder<Kanjidic2, int, QQueryOperations> rtkOldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rtkOld');
    });
  }

  QueryBuilder<Kanjidic2, int, QQueryOperations> strokeCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'strokeCount');
    });
  }

  QueryBuilder<Kanjidic2, List<JIS>, QQueryOperations> variantsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'variants');
    });
  }

  QueryBuilder<Kanjidic2, int, QQueryOperations> wanikaniProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wanikani');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

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
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ReadingSchema = Schema(
  name: r'Reading',
  id: -3353310682807968152,
  properties: {
    r'rType': PropertySchema(
      id: 0,
      name: r'rType',
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
    final value = object.rType;
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
  writer.writeString(offsets[0], object.rType);
  writer.writeString(offsets[1], object.value);
}

Reading _readingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Reading(
    rType: reader.readStringOrNull(offsets[0]),
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
  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rType',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rType',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rType',
        value: '',
      ));
    });
  }

  QueryBuilder<Reading, Reading, QAfterFilterCondition> rTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rType',
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
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

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
