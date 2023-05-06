// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetJMNEdictCollection on Isar {
  IsarCollection<JMNEdict> get jmnedict => this.collection();
}

const JMNEdictSchema = CollectionSchema(
  name: r'JMNEdict',
  id: -6318477562746852550,
  properties: {
    r'kanjis': PropertySchema(
      id: 0,
      name: r'kanjis',
      type: IsarType.stringList,
    ),
    r'meanings': PropertySchema(
      id: 1,
      name: r'meanings',
      type: IsarType.objectList,
      target: r'LanguageMeanings',
    ),
    r'partOfSpeech': PropertySchema(
      id: 2,
      name: r'partOfSpeech',
      type: IsarType.stringList,
    ),
    r'readings': PropertySchema(
      id: 3,
      name: r'readings',
      type: IsarType.stringList,
    )
  },
  estimateSize: _jMNEdictEstimateSize,
  serialize: _jMNEdictSerialize,
  deserialize: _jMNEdictDeserialize,
  deserializeProp: _jMNEdictDeserializeProp,
  idName: r'id',
  indexes: {
    r'kanjis': IndexSchema(
      id: 2657199644921628134,
      name: r'kanjis',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'kanjis',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'readings': IndexSchema(
      id: 3616145070140146735,
      name: r'readings',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'readings',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'LanguageMeanings': LanguageMeaningsSchema,
    r'LanguageMeaningsAttribute': LanguageMeaningsAttributeSchema
  },
  getId: _jMNEdictGetId,
  getLinks: _jMNEdictGetLinks,
  attach: _jMNEdictAttach,
  version: '3.1.0+1',
);

int _jMNEdictEstimateSize(
  JMNEdict object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.kanjis.length * 3;
  {
    for (var i = 0; i < object.kanjis.length; i++) {
      final value = object.kanjis[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.meanings.length * 3;
  {
    final offsets = allOffsets[LanguageMeanings]!;
    for (var i = 0; i < object.meanings.length; i++) {
      final value = object.meanings[i];
      bytesCount +=
          LanguageMeaningsSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.partOfSpeech.length * 3;
  {
    for (var i = 0; i < object.partOfSpeech.length; i++) {
      final value = object.partOfSpeech[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.readings.length * 3;
  {
    for (var i = 0; i < object.readings.length; i++) {
      final value = object.readings[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _jMNEdictSerialize(
  JMNEdict object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.kanjis);
  writer.writeObjectList<LanguageMeanings>(
    offsets[1],
    allOffsets,
    LanguageMeaningsSchema.serialize,
    object.meanings,
  );
  writer.writeStringList(offsets[2], object.partOfSpeech);
  writer.writeStringList(offsets[3], object.readings);
}

JMNEdict _jMNEdictDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = JMNEdict(
    id: id,
    kanjis: reader.readStringList(offsets[0]) ?? [],
    meanings: reader.readObjectList<LanguageMeanings>(
          offsets[1],
          LanguageMeaningsSchema.deserialize,
          allOffsets,
          LanguageMeanings(),
        ) ??
        [],
    partOfSpeech: reader.readStringList(offsets[2]) ?? [],
    readings: reader.readStringList(offsets[3]) ?? [],
  );
  return object;
}

P _jMNEdictDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readObjectList<LanguageMeanings>(
            offset,
            LanguageMeaningsSchema.deserialize,
            allOffsets,
            LanguageMeanings(),
          ) ??
          []) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _jMNEdictGetId(JMNEdict object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _jMNEdictGetLinks(JMNEdict object) {
  return [];
}

void _jMNEdictAttach(IsarCollection<dynamic> col, Id id, JMNEdict object) {
  object.id = id;
}

extension JMNEdictQueryWhereSort on QueryBuilder<JMNEdict, JMNEdict, QWhere> {
  QueryBuilder<JMNEdict, JMNEdict, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhere> anyKanjisElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'kanjis'),
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhere> anyReadingsElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'readings'),
      );
    });
  }
}

extension JMNEdictQueryWhere on QueryBuilder<JMNEdict, JMNEdict, QWhereClause> {
  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> idBetween(
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> kanjisElementEqualTo(
      String kanjisElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'kanjis',
        value: [kanjisElement],
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> kanjisElementNotEqualTo(
      String kanjisElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'kanjis',
              lower: [],
              upper: [kanjisElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'kanjis',
              lower: [kanjisElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'kanjis',
              lower: [kanjisElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'kanjis',
              lower: [],
              upper: [kanjisElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> kanjisElementGreaterThan(
    String kanjisElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'kanjis',
        lower: [kanjisElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> kanjisElementLessThan(
    String kanjisElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'kanjis',
        lower: [],
        upper: [kanjisElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> kanjisElementBetween(
    String lowerKanjisElement,
    String upperKanjisElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'kanjis',
        lower: [lowerKanjisElement],
        includeLower: includeLower,
        upper: [upperKanjisElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> kanjisElementStartsWith(
      String KanjisElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'kanjis',
        lower: [KanjisElementPrefix],
        upper: ['$KanjisElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> kanjisElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'kanjis',
        value: [''],
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause>
      kanjisElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'kanjis',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'kanjis',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'kanjis',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'kanjis',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> readingsElementEqualTo(
      String readingsElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'readings',
        value: [readingsElement],
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> readingsElementNotEqualTo(
      String readingsElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'readings',
              lower: [],
              upper: [readingsElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'readings',
              lower: [readingsElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'readings',
              lower: [readingsElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'readings',
              lower: [],
              upper: [readingsElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause>
      readingsElementGreaterThan(
    String readingsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'readings',
        lower: [readingsElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> readingsElementLessThan(
    String readingsElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'readings',
        lower: [],
        upper: [readingsElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> readingsElementBetween(
    String lowerReadingsElement,
    String upperReadingsElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'readings',
        lower: [lowerReadingsElement],
        includeLower: includeLower,
        upper: [upperReadingsElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> readingsElementStartsWith(
      String ReadingsElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'readings',
        lower: [ReadingsElementPrefix],
        upper: ['$ReadingsElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause> readingsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'readings',
        value: [''],
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterWhereClause>
      readingsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'readings',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'readings',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'readings',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'readings',
              upper: [''],
            ));
      }
    });
  }
}

extension JMNEdictQueryFilter
    on QueryBuilder<JMNEdict, JMNEdict, QFilterCondition> {
  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> idBetween(
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> kanjisElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kanjis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      kanjisElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kanjis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> kanjisElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kanjis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> kanjisElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kanjis',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      kanjisElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kanjis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> kanjisElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kanjis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> kanjisElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kanjis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> kanjisElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kanjis',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      kanjisElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kanjis',
        value: '',
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      kanjisElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kanjis',
        value: '',
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> kanjisLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjis',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> kanjisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjis',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> kanjisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjis',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> kanjisLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjis',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      kanjisLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjis',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> kanjisLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjis',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> meaningsLengthEqualTo(
      int length) {
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> meaningsIsEmpty() {
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> meaningsIsNotEmpty() {
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> meaningsLengthBetween(
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partOfSpeech',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'partOfSpeech',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partOfSpeech',
        value: '',
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partOfSpeech',
        value: '',
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'partOfSpeech',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'partOfSpeech',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'partOfSpeech',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'partOfSpeech',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'partOfSpeech',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      partOfSpeechLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'partOfSpeech',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      readingsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      readingsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'readings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      readingsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'readings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      readingsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'readings',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      readingsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'readings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      readingsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'readings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      readingsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'readings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      readingsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'readings',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      readingsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readings',
        value: '',
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
      readingsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'readings',
        value: '',
      ));
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> readingsLengthEqualTo(
      int length) {
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> readingsIsEmpty() {
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> readingsIsNotEmpty() {
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition>
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

  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> readingsLengthBetween(
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
}

extension JMNEdictQueryObject
    on QueryBuilder<JMNEdict, JMNEdict, QFilterCondition> {
  QueryBuilder<JMNEdict, JMNEdict, QAfterFilterCondition> meaningsElement(
      FilterQuery<LanguageMeanings> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'meanings');
    });
  }
}

extension JMNEdictQueryLinks
    on QueryBuilder<JMNEdict, JMNEdict, QFilterCondition> {}

extension JMNEdictQuerySortBy on QueryBuilder<JMNEdict, JMNEdict, QSortBy> {}

extension JMNEdictQuerySortThenBy
    on QueryBuilder<JMNEdict, JMNEdict, QSortThenBy> {
  QueryBuilder<JMNEdict, JMNEdict, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension JMNEdictQueryWhereDistinct
    on QueryBuilder<JMNEdict, JMNEdict, QDistinct> {
  QueryBuilder<JMNEdict, JMNEdict, QDistinct> distinctByKanjis() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kanjis');
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QDistinct> distinctByPartOfSpeech() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partOfSpeech');
    });
  }

  QueryBuilder<JMNEdict, JMNEdict, QDistinct> distinctByReadings() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'readings');
    });
  }
}

extension JMNEdictQueryProperty
    on QueryBuilder<JMNEdict, JMNEdict, QQueryProperty> {
  QueryBuilder<JMNEdict, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<JMNEdict, List<String>, QQueryOperations> kanjisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kanjis');
    });
  }

  QueryBuilder<JMNEdict, List<LanguageMeanings>, QQueryOperations>
      meaningsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meanings');
    });
  }

  QueryBuilder<JMNEdict, List<String>, QQueryOperations>
      partOfSpeechProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partOfSpeech');
    });
  }

  QueryBuilder<JMNEdict, List<String>, QQueryOperations> readingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'readings');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetJMdictCollection on Isar {
  IsarCollection<JMdict> get jmdict => this.collection();
}

const JMdictSchema = CollectionSchema(
  name: r'JMdict',
  id: -790457730395646372,
  properties: {
    r'accents': PropertySchema(
      id: 0,
      name: r'accents',
      type: IsarType.stringList,
    ),
    r'frequency': PropertySchema(
      id: 1,
      name: r'frequency',
      type: IsarType.float,
    ),
    r'hiraganas': PropertySchema(
      id: 2,
      name: r'hiraganas',
      type: IsarType.stringList,
    ),
    r'jlptLevel': PropertySchema(
      id: 3,
      name: r'jlptLevel',
      type: IsarType.stringList,
    ),
    r'kanjiInfo': PropertySchema(
      id: 4,
      name: r'kanjiInfo',
      type: IsarType.stringList,
    ),
    r'kanjis': PropertySchema(
      id: 5,
      name: r'kanjis',
      type: IsarType.stringList,
    ),
    r'meanings': PropertySchema(
      id: 6,
      name: r'meanings',
      type: IsarType.objectList,
      target: r'LanguageMeanings',
    ),
    r'readingInfo': PropertySchema(
      id: 7,
      name: r'readingInfo',
      type: IsarType.stringList,
    ),
    r'readingRestriction': PropertySchema(
      id: 8,
      name: r'readingRestriction',
      type: IsarType.stringList,
    ),
    r'readings': PropertySchema(
      id: 9,
      name: r'readings',
      type: IsarType.stringList,
    )
  },
  estimateSize: _jMdictEstimateSize,
  serialize: _jMdictSerialize,
  deserialize: _jMdictDeserialize,
  deserializeProp: _jMdictDeserializeProp,
  idName: r'id',
  indexes: {
    r'kanjis': IndexSchema(
      id: 2657199644921628134,
      name: r'kanjis',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'kanjis',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'hiraganas': IndexSchema(
      id: -993041402762493588,
      name: r'hiraganas',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'hiraganas',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'LanguageMeanings': LanguageMeaningsSchema,
    r'LanguageMeaningsAttribute': LanguageMeaningsAttributeSchema
  },
  getId: _jMdictGetId,
  getLinks: _jMdictGetLinks,
  attach: _jMdictAttach,
  version: '3.1.0+1',
);

int _jMdictEstimateSize(
  JMdict object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.accents;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += value.length * 3;
          }
        }
      }
    }
  }
  bytesCount += 3 + object.hiraganas.length * 3;
  {
    for (var i = 0; i < object.hiraganas.length; i++) {
      final value = object.hiraganas[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final list = object.jlptLevel;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.kanjiInfo;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += value.length * 3;
          }
        }
      }
    }
  }
  bytesCount += 3 + object.kanjis.length * 3;
  {
    for (var i = 0; i < object.kanjis.length; i++) {
      final value = object.kanjis[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.meanings.length * 3;
  {
    final offsets = allOffsets[LanguageMeanings]!;
    for (var i = 0; i < object.meanings.length; i++) {
      final value = object.meanings[i];
      bytesCount +=
          LanguageMeaningsSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final list = object.readingInfo;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += value.length * 3;
          }
        }
      }
    }
  }
  {
    final list = object.readingRestriction;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += value.length * 3;
          }
        }
      }
    }
  }
  bytesCount += 3 + object.readings.length * 3;
  {
    for (var i = 0; i < object.readings.length; i++) {
      final value = object.readings[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _jMdictSerialize(
  JMdict object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.accents);
  writer.writeFloat(offsets[1], object.frequency);
  writer.writeStringList(offsets[2], object.hiraganas);
  writer.writeStringList(offsets[3], object.jlptLevel);
  writer.writeStringList(offsets[4], object.kanjiInfo);
  writer.writeStringList(offsets[5], object.kanjis);
  writer.writeObjectList<LanguageMeanings>(
    offsets[6],
    allOffsets,
    LanguageMeaningsSchema.serialize,
    object.meanings,
  );
  writer.writeStringList(offsets[7], object.readingInfo);
  writer.writeStringList(offsets[8], object.readingRestriction);
  writer.writeStringList(offsets[9], object.readings);
}

JMdict _jMdictDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = JMdict(
    accents: reader.readStringOrNullList(offsets[0]),
    frequency: reader.readFloat(offsets[1]),
    hiraganas: reader.readStringList(offsets[2]) ?? [],
    id: id,
    jlptLevel: reader.readStringList(offsets[3]),
    kanjiInfo: reader.readStringOrNullList(offsets[4]),
    kanjis: reader.readStringList(offsets[5]) ?? [],
    meanings: reader.readObjectList<LanguageMeanings>(
          offsets[6],
          LanguageMeaningsSchema.deserialize,
          allOffsets,
          LanguageMeanings(),
        ) ??
        [],
    readingInfo: reader.readStringOrNullList(offsets[7]),
    readingRestriction: reader.readStringOrNullList(offsets[8]),
    readings: reader.readStringList(offsets[9]) ?? [],
  );
  return object;
}

P _jMdictDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNullList(offset)) as P;
    case 1:
      return (reader.readFloat(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readStringOrNullList(offset)) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readObjectList<LanguageMeanings>(
            offset,
            LanguageMeaningsSchema.deserialize,
            allOffsets,
            LanguageMeanings(),
          ) ??
          []) as P;
    case 7:
      return (reader.readStringOrNullList(offset)) as P;
    case 8:
      return (reader.readStringOrNullList(offset)) as P;
    case 9:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _jMdictGetId(JMdict object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _jMdictGetLinks(JMdict object) {
  return [];
}

void _jMdictAttach(IsarCollection<dynamic> col, Id id, JMdict object) {
  object.id = id;
}

extension JMdictQueryWhereSort on QueryBuilder<JMdict, JMdict, QWhere> {
  QueryBuilder<JMdict, JMdict, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhere> anyKanjisElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'kanjis'),
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhere> anyHiraganasElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'hiraganas'),
      );
    });
  }
}

extension JMdictQueryWhere on QueryBuilder<JMdict, JMdict, QWhereClause> {
  QueryBuilder<JMdict, JMdict, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> idBetween(
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

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> kanjisElementEqualTo(
      String kanjisElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'kanjis',
        value: [kanjisElement],
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> kanjisElementNotEqualTo(
      String kanjisElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'kanjis',
              lower: [],
              upper: [kanjisElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'kanjis',
              lower: [kanjisElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'kanjis',
              lower: [kanjisElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'kanjis',
              lower: [],
              upper: [kanjisElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> kanjisElementGreaterThan(
    String kanjisElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'kanjis',
        lower: [kanjisElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> kanjisElementLessThan(
    String kanjisElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'kanjis',
        lower: [],
        upper: [kanjisElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> kanjisElementBetween(
    String lowerKanjisElement,
    String upperKanjisElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'kanjis',
        lower: [lowerKanjisElement],
        includeLower: includeLower,
        upper: [upperKanjisElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> kanjisElementStartsWith(
      String KanjisElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'kanjis',
        lower: [KanjisElementPrefix],
        upper: ['$KanjisElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> kanjisElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'kanjis',
        value: [''],
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> kanjisElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'kanjis',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'kanjis',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'kanjis',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'kanjis',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> hiraganasElementEqualTo(
      String hiraganasElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hiraganas',
        value: [hiraganasElement],
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> hiraganasElementNotEqualTo(
      String hiraganasElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hiraganas',
              lower: [],
              upper: [hiraganasElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hiraganas',
              lower: [hiraganasElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hiraganas',
              lower: [hiraganasElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'hiraganas',
              lower: [],
              upper: [hiraganasElement],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> hiraganasElementGreaterThan(
    String hiraganasElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'hiraganas',
        lower: [hiraganasElement],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> hiraganasElementLessThan(
    String hiraganasElement, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'hiraganas',
        lower: [],
        upper: [hiraganasElement],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> hiraganasElementBetween(
    String lowerHiraganasElement,
    String upperHiraganasElement, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'hiraganas',
        lower: [lowerHiraganasElement],
        includeLower: includeLower,
        upper: [upperHiraganasElement],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> hiraganasElementStartsWith(
      String HiraganasElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'hiraganas',
        lower: [HiraganasElementPrefix],
        upper: ['$HiraganasElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> hiraganasElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'hiraganas',
        value: [''],
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> hiraganasElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'hiraganas',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'hiraganas',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'hiraganas',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'hiraganas',
              upper: [''],
            ));
      }
    });
  }
}

extension JMdictQueryFilter on QueryBuilder<JMdict, JMdict, QFilterCondition> {
  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'accents',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'accents',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'accents',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      accentsElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'accents',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsElementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsElementGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsElementLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsElementBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accents',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'accents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'accents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'accents',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'accents',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accents',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      accentsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'accents',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'accents',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'accents',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'accents',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'accents',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'accents',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> accentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'accents',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> frequencyEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frequency',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> frequencyGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frequency',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> frequencyLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frequency',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> frequencyBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frequency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> hiraganasElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hiraganas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      hiraganasElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hiraganas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> hiraganasElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hiraganas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> hiraganasElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hiraganas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      hiraganasElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hiraganas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> hiraganasElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hiraganas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> hiraganasElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hiraganas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> hiraganasElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hiraganas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      hiraganasElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hiraganas',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      hiraganasElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hiraganas',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> hiraganasLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hiraganas',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> hiraganasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hiraganas',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> hiraganasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hiraganas',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> hiraganasLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hiraganas',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      hiraganasLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hiraganas',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> hiraganasLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hiraganas',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> idBetween(
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'jlptLevel',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'jlptLevel',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jlptLevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      jlptLevelElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jlptLevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jlptLevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jlptLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      jlptLevelElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'jlptLevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'jlptLevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'jlptLevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'jlptLevel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      jlptLevelElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jlptLevel',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      jlptLevelElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'jlptLevel',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'jlptLevel',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'jlptLevel',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'jlptLevel',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'jlptLevel',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      jlptLevelLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'jlptLevel',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> jlptLevelLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'jlptLevel',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kanjiInfo',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kanjiInfo',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'kanjiInfo',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      kanjiInfoElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'kanjiInfo',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoElementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kanjiInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      kanjiInfoElementGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kanjiInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoElementLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kanjiInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoElementBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kanjiInfo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      kanjiInfoElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kanjiInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kanjiInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kanjiInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kanjiInfo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      kanjiInfoElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kanjiInfo',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      kanjiInfoElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kanjiInfo',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjiInfo',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjiInfo',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjiInfo',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjiInfo',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      kanjiInfoLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjiInfo',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjiInfoLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjiInfo',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kanjis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kanjis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kanjis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kanjis',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kanjis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kanjis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kanjis',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kanjis',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kanjis',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      kanjisElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kanjis',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjis',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjis',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjis',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjis',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjis',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> kanjisLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'kanjis',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> meaningsLengthEqualTo(
      int length) {
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> meaningsIsEmpty() {
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> meaningsIsNotEmpty() {
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> meaningsLengthLessThan(
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> meaningsLengthGreaterThan(
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> meaningsLengthBetween(
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingInfoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'readingInfo',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingInfoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'readingInfo',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingInfoElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'readingInfo',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingInfoElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'readingInfo',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingInfoElementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readingInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingInfoElementGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'readingInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingInfoElementLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'readingInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingInfoElementBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'readingInfo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingInfoElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'readingInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingInfoElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'readingInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingInfoElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'readingInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingInfoElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'readingInfo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingInfoElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readingInfo',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingInfoElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'readingInfo',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingInfoLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readingInfo',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingInfoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readingInfo',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingInfoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readingInfo',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingInfoLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readingInfo',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingInfoLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readingInfo',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingInfoLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readingInfo',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'readingRestriction',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'readingRestriction',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'readingRestriction',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'readingRestriction',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionElementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readingRestriction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionElementGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'readingRestriction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionElementLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'readingRestriction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionElementBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'readingRestriction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'readingRestriction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'readingRestriction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'readingRestriction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'readingRestriction',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readingRestriction',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'readingRestriction',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readingRestriction',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readingRestriction',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readingRestriction',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readingRestriction',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readingRestriction',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingRestrictionLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readingRestriction',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'readings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'readings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'readings',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'readings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'readings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'readings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'readings',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readings',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      readingsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'readings',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsLengthEqualTo(
      int length) {
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsIsEmpty() {
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsIsNotEmpty() {
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsLengthLessThan(
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsLengthGreaterThan(
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> readingsLengthBetween(
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
}

extension JMdictQueryObject on QueryBuilder<JMdict, JMdict, QFilterCondition> {
  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> meaningsElement(
      FilterQuery<LanguageMeanings> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'meanings');
    });
  }
}

extension JMdictQueryLinks on QueryBuilder<JMdict, JMdict, QFilterCondition> {}

extension JMdictQuerySortBy on QueryBuilder<JMdict, JMdict, QSortBy> {
  QueryBuilder<JMdict, JMdict, QAfterSortBy> sortByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.asc);
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterSortBy> sortByFrequencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.desc);
    });
  }
}

extension JMdictQuerySortThenBy on QueryBuilder<JMdict, JMdict, QSortThenBy> {
  QueryBuilder<JMdict, JMdict, QAfterSortBy> thenByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.asc);
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterSortBy> thenByFrequencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequency', Sort.desc);
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension JMdictQueryWhereDistinct on QueryBuilder<JMdict, JMdict, QDistinct> {
  QueryBuilder<JMdict, JMdict, QDistinct> distinctByAccents() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accents');
    });
  }

  QueryBuilder<JMdict, JMdict, QDistinct> distinctByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'frequency');
    });
  }

  QueryBuilder<JMdict, JMdict, QDistinct> distinctByHiraganas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hiraganas');
    });
  }

  QueryBuilder<JMdict, JMdict, QDistinct> distinctByJlptLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jlptLevel');
    });
  }

  QueryBuilder<JMdict, JMdict, QDistinct> distinctByKanjiInfo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kanjiInfo');
    });
  }

  QueryBuilder<JMdict, JMdict, QDistinct> distinctByKanjis() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kanjis');
    });
  }

  QueryBuilder<JMdict, JMdict, QDistinct> distinctByReadingInfo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'readingInfo');
    });
  }

  QueryBuilder<JMdict, JMdict, QDistinct> distinctByReadingRestriction() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'readingRestriction');
    });
  }

  QueryBuilder<JMdict, JMdict, QDistinct> distinctByReadings() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'readings');
    });
  }
}

extension JMdictQueryProperty on QueryBuilder<JMdict, JMdict, QQueryProperty> {
  QueryBuilder<JMdict, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<JMdict, List<String?>?, QQueryOperations> accentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accents');
    });
  }

  QueryBuilder<JMdict, double, QQueryOperations> frequencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'frequency');
    });
  }

  QueryBuilder<JMdict, List<String>, QQueryOperations> hiraganasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hiraganas');
    });
  }

  QueryBuilder<JMdict, List<String>?, QQueryOperations> jlptLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jlptLevel');
    });
  }

  QueryBuilder<JMdict, List<String?>?, QQueryOperations> kanjiInfoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kanjiInfo');
    });
  }

  QueryBuilder<JMdict, List<String>, QQueryOperations> kanjisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kanjis');
    });
  }

  QueryBuilder<JMdict, List<LanguageMeanings>, QQueryOperations>
      meaningsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meanings');
    });
  }

  QueryBuilder<JMdict, List<String?>?, QQueryOperations> readingInfoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'readingInfo');
    });
  }

  QueryBuilder<JMdict, List<String?>?, QQueryOperations>
      readingRestrictionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'readingRestriction');
    });
  }

  QueryBuilder<JMdict, List<String>, QQueryOperations> readingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'readings');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const LanguageMeaningsAttributeSchema = Schema(
  name: r'LanguageMeaningsAttribute',
  id: -6759242125393617864,
  properties: {
    r'attributes': PropertySchema(
      id: 0,
      name: r'attributes',
      type: IsarType.stringList,
    )
  },
  estimateSize: _languageMeaningsAttributeEstimateSize,
  serialize: _languageMeaningsAttributeSerialize,
  deserialize: _languageMeaningsAttributeDeserialize,
  deserializeProp: _languageMeaningsAttributeDeserializeProp,
);

int _languageMeaningsAttributeEstimateSize(
  LanguageMeaningsAttribute object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.attributes.length * 3;
  {
    for (var i = 0; i < object.attributes.length; i++) {
      final value = object.attributes[i];
      if (value != null) {
        bytesCount += value.length * 3;
      }
    }
  }
  return bytesCount;
}

void _languageMeaningsAttributeSerialize(
  LanguageMeaningsAttribute object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.attributes);
}

LanguageMeaningsAttribute _languageMeaningsAttributeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LanguageMeaningsAttribute(
    attributes: reader.readStringOrNullList(offsets[0]) ?? const [],
  );
  return object;
}

P _languageMeaningsAttributeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNullList(offset) ?? const []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LanguageMeaningsAttributeQueryFilter on QueryBuilder<
    LanguageMeaningsAttribute, LanguageMeaningsAttribute, QFilterCondition> {
  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'attributes',
      ));
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'attributes',
      ));
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesElementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attributes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesElementGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attributes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesElementLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attributes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesElementBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attributes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attributes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attributes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
          QAfterFilterCondition>
      attributesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attributes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
          QAfterFilterCondition>
      attributesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attributes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attributes',
        value: '',
      ));
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attributes',
        value: '',
      ));
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attributes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attributes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attributes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attributes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attributes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeaningsAttribute, LanguageMeaningsAttribute,
      QAfterFilterCondition> attributesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attributes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension LanguageMeaningsAttributeQueryObject on QueryBuilder<
    LanguageMeaningsAttribute, LanguageMeaningsAttribute, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const LanguageMeaningsSchema = Schema(
  name: r'LanguageMeanings',
  id: 1898793294108280319,
  properties: {
    r'antonyms': PropertySchema(
      id: 0,
      name: r'antonyms',
      type: IsarType.objectList,
      target: r'LanguageMeaningsAttribute',
    ),
    r'dialect': PropertySchema(
      id: 1,
      name: r'dialect',
      type: IsarType.objectList,
      target: r'LanguageMeaningsAttribute',
    ),
    r'field': PropertySchema(
      id: 2,
      name: r'field',
      type: IsarType.objectList,
      target: r'LanguageMeaningsAttribute',
    ),
    r'language': PropertySchema(
      id: 3,
      name: r'language',
      type: IsarType.string,
    ),
    r'meanings': PropertySchema(
      id: 4,
      name: r'meanings',
      type: IsarType.stringList,
    ),
    r'partOfSpeech': PropertySchema(
      id: 5,
      name: r'partOfSpeech',
      type: IsarType.objectList,
      target: r'LanguageMeaningsAttribute',
    ),
    r'senseInfo': PropertySchema(
      id: 6,
      name: r'senseInfo',
      type: IsarType.objectList,
      target: r'LanguageMeaningsAttribute',
    ),
    r'senseKanjiTarget': PropertySchema(
      id: 7,
      name: r'senseKanjiTarget',
      type: IsarType.objectList,
      target: r'LanguageMeaningsAttribute',
    ),
    r'senseReadingTarget': PropertySchema(
      id: 8,
      name: r'senseReadingTarget',
      type: IsarType.objectList,
      target: r'LanguageMeaningsAttribute',
    ),
    r'source': PropertySchema(
      id: 9,
      name: r'source',
      type: IsarType.objectList,
      target: r'LanguageMeaningsAttribute',
    ),
    r'xref': PropertySchema(
      id: 10,
      name: r'xref',
      type: IsarType.objectList,
      target: r'LanguageMeaningsAttribute',
    )
  },
  estimateSize: _languageMeaningsEstimateSize,
  serialize: _languageMeaningsSerialize,
  deserialize: _languageMeaningsDeserialize,
  deserializeProp: _languageMeaningsDeserializeProp,
);

int _languageMeaningsEstimateSize(
  LanguageMeanings object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.antonyms;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[LanguageMeaningsAttribute]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += LanguageMeaningsAttributeSchema.estimateSize(
                value, offsets, allOffsets);
          }
        }
      }
    }
  }
  {
    final list = object.dialect;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[LanguageMeaningsAttribute]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += LanguageMeaningsAttributeSchema.estimateSize(
                value, offsets, allOffsets);
          }
        }
      }
    }
  }
  {
    final list = object.field;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[LanguageMeaningsAttribute]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += LanguageMeaningsAttributeSchema.estimateSize(
                value, offsets, allOffsets);
          }
        }
      }
    }
  }
  {
    final value = object.language;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.meanings;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.partOfSpeech;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[LanguageMeaningsAttribute]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += LanguageMeaningsAttributeSchema.estimateSize(
                value, offsets, allOffsets);
          }
        }
      }
    }
  }
  {
    final list = object.senseInfo;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[LanguageMeaningsAttribute]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += LanguageMeaningsAttributeSchema.estimateSize(
                value, offsets, allOffsets);
          }
        }
      }
    }
  }
  {
    final list = object.senseKanjiTarget;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[LanguageMeaningsAttribute]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += LanguageMeaningsAttributeSchema.estimateSize(
                value, offsets, allOffsets);
          }
        }
      }
    }
  }
  {
    final list = object.senseReadingTarget;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[LanguageMeaningsAttribute]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += LanguageMeaningsAttributeSchema.estimateSize(
                value, offsets, allOffsets);
          }
        }
      }
    }
  }
  {
    final list = object.source;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[LanguageMeaningsAttribute]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += LanguageMeaningsAttributeSchema.estimateSize(
                value, offsets, allOffsets);
          }
        }
      }
    }
  }
  {
    final list = object.xref;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[LanguageMeaningsAttribute]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += LanguageMeaningsAttributeSchema.estimateSize(
                value, offsets, allOffsets);
          }
        }
      }
    }
  }
  return bytesCount;
}

void _languageMeaningsSerialize(
  LanguageMeanings object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<LanguageMeaningsAttribute>(
    offsets[0],
    allOffsets,
    LanguageMeaningsAttributeSchema.serialize,
    object.antonyms,
  );
  writer.writeObjectList<LanguageMeaningsAttribute>(
    offsets[1],
    allOffsets,
    LanguageMeaningsAttributeSchema.serialize,
    object.dialect,
  );
  writer.writeObjectList<LanguageMeaningsAttribute>(
    offsets[2],
    allOffsets,
    LanguageMeaningsAttributeSchema.serialize,
    object.field,
  );
  writer.writeString(offsets[3], object.language);
  writer.writeStringList(offsets[4], object.meanings);
  writer.writeObjectList<LanguageMeaningsAttribute>(
    offsets[5],
    allOffsets,
    LanguageMeaningsAttributeSchema.serialize,
    object.partOfSpeech,
  );
  writer.writeObjectList<LanguageMeaningsAttribute>(
    offsets[6],
    allOffsets,
    LanguageMeaningsAttributeSchema.serialize,
    object.senseInfo,
  );
  writer.writeObjectList<LanguageMeaningsAttribute>(
    offsets[7],
    allOffsets,
    LanguageMeaningsAttributeSchema.serialize,
    object.senseKanjiTarget,
  );
  writer.writeObjectList<LanguageMeaningsAttribute>(
    offsets[8],
    allOffsets,
    LanguageMeaningsAttributeSchema.serialize,
    object.senseReadingTarget,
  );
  writer.writeObjectList<LanguageMeaningsAttribute>(
    offsets[9],
    allOffsets,
    LanguageMeaningsAttributeSchema.serialize,
    object.source,
  );
  writer.writeObjectList<LanguageMeaningsAttribute>(
    offsets[10],
    allOffsets,
    LanguageMeaningsAttributeSchema.serialize,
    object.xref,
  );
}

LanguageMeanings _languageMeaningsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LanguageMeanings(
    antonyms: reader.readObjectOrNullList<LanguageMeaningsAttribute>(
      offsets[0],
      LanguageMeaningsAttributeSchema.deserialize,
      allOffsets,
    ),
    dialect: reader.readObjectOrNullList<LanguageMeaningsAttribute>(
      offsets[1],
      LanguageMeaningsAttributeSchema.deserialize,
      allOffsets,
    ),
    field: reader.readObjectOrNullList<LanguageMeaningsAttribute>(
      offsets[2],
      LanguageMeaningsAttributeSchema.deserialize,
      allOffsets,
    ),
    language: reader.readStringOrNull(offsets[3]),
    meanings: reader.readStringList(offsets[4]),
    partOfSpeech: reader.readObjectOrNullList<LanguageMeaningsAttribute>(
      offsets[5],
      LanguageMeaningsAttributeSchema.deserialize,
      allOffsets,
    ),
    senseInfo: reader.readObjectOrNullList<LanguageMeaningsAttribute>(
      offsets[6],
      LanguageMeaningsAttributeSchema.deserialize,
      allOffsets,
    ),
    senseKanjiTarget: reader.readObjectOrNullList<LanguageMeaningsAttribute>(
      offsets[7],
      LanguageMeaningsAttributeSchema.deserialize,
      allOffsets,
    ),
    senseReadingTarget: reader.readObjectOrNullList<LanguageMeaningsAttribute>(
      offsets[8],
      LanguageMeaningsAttributeSchema.deserialize,
      allOffsets,
    ),
    source: reader.readObjectOrNullList<LanguageMeaningsAttribute>(
      offsets[9],
      LanguageMeaningsAttributeSchema.deserialize,
      allOffsets,
    ),
    xref: reader.readObjectOrNullList<LanguageMeaningsAttribute>(
      offsets[10],
      LanguageMeaningsAttributeSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _languageMeaningsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNullList<LanguageMeaningsAttribute>(
        offset,
        LanguageMeaningsAttributeSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNullList<LanguageMeaningsAttribute>(
        offset,
        LanguageMeaningsAttributeSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectOrNullList<LanguageMeaningsAttribute>(
        offset,
        LanguageMeaningsAttributeSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringList(offset)) as P;
    case 5:
      return (reader.readObjectOrNullList<LanguageMeaningsAttribute>(
        offset,
        LanguageMeaningsAttributeSchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readObjectOrNullList<LanguageMeaningsAttribute>(
        offset,
        LanguageMeaningsAttributeSchema.deserialize,
        allOffsets,
      )) as P;
    case 7:
      return (reader.readObjectOrNullList<LanguageMeaningsAttribute>(
        offset,
        LanguageMeaningsAttributeSchema.deserialize,
        allOffsets,
      )) as P;
    case 8:
      return (reader.readObjectOrNullList<LanguageMeaningsAttribute>(
        offset,
        LanguageMeaningsAttributeSchema.deserialize,
        allOffsets,
      )) as P;
    case 9:
      return (reader.readObjectOrNullList<LanguageMeaningsAttribute>(
        offset,
        LanguageMeaningsAttributeSchema.deserialize,
        allOffsets,
      )) as P;
    case 10:
      return (reader.readObjectOrNullList<LanguageMeaningsAttribute>(
        offset,
        LanguageMeaningsAttributeSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LanguageMeaningsQueryFilter
    on QueryBuilder<LanguageMeanings, LanguageMeanings, QFilterCondition> {
  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      antonymsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'antonyms',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      antonymsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'antonyms',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      antonymsElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'antonyms',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      antonymsElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'antonyms',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      antonymsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'antonyms',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      antonymsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'antonyms',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      antonymsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'antonyms',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      antonymsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'antonyms',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      antonymsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'antonyms',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      antonymsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'antonyms',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      dialectIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dialect',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      dialectIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dialect',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      dialectElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'dialect',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      dialectElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'dialect',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      dialectLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dialect',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      dialectIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dialect',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      dialectIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dialect',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      dialectLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dialect',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      dialectLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dialect',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      dialectLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dialect',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      fieldIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'field',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      fieldIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'field',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      fieldElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'field',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      fieldElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'field',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      fieldLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'field',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      fieldIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'field',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      fieldIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'field',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      fieldLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'field',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      fieldLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'field',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      fieldLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'field',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      languageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      languageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      languageEqualTo(
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

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      languageGreaterThan(
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

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      languageLessThan(
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

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      languageBetween(
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

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      languageStartsWith(
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

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      languageEndsWith(
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

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      languageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      languageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'language',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      meaningsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'meanings',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      meaningsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'meanings',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      meaningsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meanings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      meaningsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'meanings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      meaningsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'meanings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      meaningsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'meanings',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      meaningsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'meanings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      meaningsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'meanings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      meaningsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'meanings',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      meaningsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'meanings',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      meaningsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meanings',
        value: '',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      meaningsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'meanings',
        value: '',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
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

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
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

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
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

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
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

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
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

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
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

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      partOfSpeechIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partOfSpeech',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      partOfSpeechIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partOfSpeech',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      partOfSpeechElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'partOfSpeech',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      partOfSpeechElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'partOfSpeech',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      partOfSpeechLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'partOfSpeech',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      partOfSpeechIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'partOfSpeech',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      partOfSpeechIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'partOfSpeech',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      partOfSpeechLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'partOfSpeech',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      partOfSpeechLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'partOfSpeech',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      partOfSpeechLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'partOfSpeech',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseInfoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'senseInfo',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseInfoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'senseInfo',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseInfoElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'senseInfo',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseInfoElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'senseInfo',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseInfoLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseInfo',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseInfoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseInfo',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseInfoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseInfo',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseInfoLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseInfo',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseInfoLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseInfo',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseInfoLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseInfo',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseKanjiTargetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'senseKanjiTarget',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseKanjiTargetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'senseKanjiTarget',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseKanjiTargetElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'senseKanjiTarget',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseKanjiTargetElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'senseKanjiTarget',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseKanjiTargetLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseKanjiTarget',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseKanjiTargetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseKanjiTarget',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseKanjiTargetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseKanjiTarget',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseKanjiTargetLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseKanjiTarget',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseKanjiTargetLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseKanjiTarget',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseKanjiTargetLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseKanjiTarget',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseReadingTargetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'senseReadingTarget',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseReadingTargetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'senseReadingTarget',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseReadingTargetElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'senseReadingTarget',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseReadingTargetElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'senseReadingTarget',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseReadingTargetLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseReadingTarget',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseReadingTargetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseReadingTarget',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseReadingTargetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseReadingTarget',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseReadingTargetLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseReadingTarget',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseReadingTargetLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseReadingTarget',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseReadingTargetLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'senseReadingTarget',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      sourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'source',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      sourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'source',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      sourceElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'source',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      sourceElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'source',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      sourceLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'source',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      sourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'source',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      sourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'source',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      sourceLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'source',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      sourceLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'source',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      sourceLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'source',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      xrefIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'xref',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      xrefIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'xref',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      xrefElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'xref',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      xrefElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'xref',
      ));
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      xrefLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'xref',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      xrefIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'xref',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      xrefIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'xref',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      xrefLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'xref',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      xrefLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'xref',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      xrefLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'xref',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension LanguageMeaningsQueryObject
    on QueryBuilder<LanguageMeanings, LanguageMeanings, QFilterCondition> {
  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      antonymsElement(FilterQuery<LanguageMeaningsAttribute> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'antonyms');
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      dialectElement(FilterQuery<LanguageMeaningsAttribute> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'dialect');
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      fieldElement(FilterQuery<LanguageMeaningsAttribute> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'field');
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      partOfSpeechElement(FilterQuery<LanguageMeaningsAttribute> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'partOfSpeech');
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseInfoElement(FilterQuery<LanguageMeaningsAttribute> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'senseInfo');
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseKanjiTargetElement(FilterQuery<LanguageMeaningsAttribute> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'senseKanjiTarget');
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      senseReadingTargetElement(FilterQuery<LanguageMeaningsAttribute> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'senseReadingTarget');
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      sourceElement(FilterQuery<LanguageMeaningsAttribute> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'source');
    });
  }

  QueryBuilder<LanguageMeanings, LanguageMeanings, QAfterFilterCondition>
      xrefElement(FilterQuery<LanguageMeaningsAttribute> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'xref');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageMeaningsAttribute _$LanguageMeaningsAttributeFromJson(
        Map<String, dynamic> json) =>
    LanguageMeaningsAttribute(
      attributes: (json['attributes'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$LanguageMeaningsAttributeToJson(
        LanguageMeaningsAttribute instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
    };

LanguageMeanings _$LanguageMeaningsFromJson(Map<String, dynamic> json) =>
    LanguageMeanings(
      language: json['language'] as String?,
      meanings: (json['meanings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      senseKanjiTarget: (json['senseKanjiTarget'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : LanguageMeaningsAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      senseReadingTarget: (json['senseReadingTarget'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : LanguageMeaningsAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      xref: (json['xref'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : LanguageMeaningsAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      antonyms: (json['antonyms'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : LanguageMeaningsAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      partOfSpeech: (json['partOfSpeech'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : LanguageMeaningsAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      field: (json['field'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : LanguageMeaningsAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : LanguageMeaningsAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      dialect: (json['dialect'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : LanguageMeaningsAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      senseInfo: (json['senseInfo'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : LanguageMeaningsAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LanguageMeaningsToJson(LanguageMeanings instance) =>
    <String, dynamic>{
      'language': instance.language,
      'meanings': instance.meanings,
      'senseKanjiTarget': instance.senseKanjiTarget,
      'senseReadingTarget': instance.senseReadingTarget,
      'xref': instance.xref,
      'antonyms': instance.antonyms,
      'partOfSpeech': instance.partOfSpeech,
      'field': instance.field,
      'source': instance.source,
      'dialect': instance.dialect,
      'senseInfo': instance.senseInfo,
    };
