// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

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
  embeddedSchemas: {r'LanguageMeanings': LanguageMeaningsSchema},
  getId: _jMNEdictGetId,
  getLinks: _jMNEdictGetLinks,
  attach: _jMNEdictAttach,
  version: '3.0.5',
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
  object.id = id;
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
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetJMdictCollection on Isar {
  IsarCollection<JMdict> get jmdict => this.collection();
}

const JMdictSchema = CollectionSchema(
  name: r'JMdict',
  id: -790457730395646372,
  properties: {
    r'frequency': PropertySchema(
      id: 0,
      name: r'frequency',
      type: IsarType.float,
    ),
    r'kanjis': PropertySchema(
      id: 1,
      name: r'kanjis',
      type: IsarType.stringList,
    ),
    r'meanings': PropertySchema(
      id: 2,
      name: r'meanings',
      type: IsarType.objectList,
      target: r'LanguageMeanings',
    ),
    r'partOfSpeech': PropertySchema(
      id: 3,
      name: r'partOfSpeech',
      type: IsarType.stringList,
    ),
    r'readings': PropertySchema(
      id: 4,
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
  embeddedSchemas: {r'LanguageMeanings': LanguageMeaningsSchema},
  getId: _jMdictGetId,
  getLinks: _jMdictGetLinks,
  attach: _jMdictAttach,
  version: '3.0.5',
);

int _jMdictEstimateSize(
  JMdict object,
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

void _jMdictSerialize(
  JMdict object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeFloat(offsets[0], object.frequency);
  writer.writeStringList(offsets[1], object.kanjis);
  writer.writeObjectList<LanguageMeanings>(
    offsets[2],
    allOffsets,
    LanguageMeaningsSchema.serialize,
    object.meanings,
  );
  writer.writeStringList(offsets[3], object.partOfSpeech);
  writer.writeStringList(offsets[4], object.readings);
}

JMdict _jMdictDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = JMdict(
    frequency: reader.readFloat(offsets[0]),
    kanjis: reader.readStringList(offsets[1]) ?? [],
    meanings: reader.readObjectList<LanguageMeanings>(
          offsets[2],
          LanguageMeaningsSchema.deserialize,
          allOffsets,
          LanguageMeanings(),
        ) ??
        [],
    partOfSpeech: reader.readStringList(offsets[3]) ?? [],
    readings: reader.readStringList(offsets[4]) ?? [],
  );
  object.id = id;
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
      return (reader.readFloat(offset)) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readObjectList<LanguageMeanings>(
            offset,
            LanguageMeaningsSchema.deserialize,
            allOffsets,
            LanguageMeanings(),
          ) ??
          []) as P;
    case 3:
      return (reader.readStringList(offset) ?? []) as P;
    case 4:
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

  QueryBuilder<JMdict, JMdict, QAfterWhere> anyReadingsElement() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'readings'),
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

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> readingsElementEqualTo(
      String readingsElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'readings',
        value: [readingsElement],
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> readingsElementNotEqualTo(
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

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> readingsElementGreaterThan(
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

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> readingsElementLessThan(
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

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> readingsElementBetween(
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

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> readingsElementStartsWith(
      String ReadingsElementPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'readings',
        lower: [ReadingsElementPrefix],
        upper: ['$ReadingsElementPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> readingsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'readings',
        value: [''],
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterWhereClause> readingsElementIsNotEmpty() {
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

extension JMdictQueryFilter on QueryBuilder<JMdict, JMdict, QFilterCondition> {
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      partOfSpeechElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      partOfSpeechElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'partOfSpeech',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      partOfSpeechElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partOfSpeech',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
      partOfSpeechElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partOfSpeech',
        value: '',
      ));
    });
  }

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> partOfSpeechLengthEqualTo(
      int length) {
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> partOfSpeechIsEmpty() {
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> partOfSpeechIsNotEmpty() {
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition>
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

  QueryBuilder<JMdict, JMdict, QAfterFilterCondition> partOfSpeechLengthBetween(
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
  QueryBuilder<JMdict, JMdict, QDistinct> distinctByFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'frequency');
    });
  }

  QueryBuilder<JMdict, JMdict, QDistinct> distinctByKanjis() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kanjis');
    });
  }

  QueryBuilder<JMdict, JMdict, QDistinct> distinctByPartOfSpeech() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partOfSpeech');
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

  QueryBuilder<JMdict, double, QQueryOperations> frequencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'frequency');
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

  QueryBuilder<JMdict, List<String>, QQueryOperations> partOfSpeechProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partOfSpeech');
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
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const LanguageMeaningsSchema = Schema(
  name: r'LanguageMeanings',
  id: 1898793294108280319,
  properties: {
    r'language': PropertySchema(
      id: 0,
      name: r'language',
      type: IsarType.string,
    ),
    r'meanings': PropertySchema(
      id: 1,
      name: r'meanings',
      type: IsarType.stringList,
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
  return bytesCount;
}

void _languageMeaningsSerialize(
  LanguageMeanings object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.language);
  writer.writeStringList(offsets[1], object.meanings);
}

LanguageMeanings _languageMeaningsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LanguageMeanings(
    language: reader.readStringOrNull(offsets[0]),
    meanings: reader.readStringList(offsets[1]),
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
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LanguageMeaningsQueryFilter
    on QueryBuilder<LanguageMeanings, LanguageMeanings, QFilterCondition> {
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
}

extension LanguageMeaningsQueryObject
    on QueryBuilder<LanguageMeanings, LanguageMeanings, QFilterCondition> {}
