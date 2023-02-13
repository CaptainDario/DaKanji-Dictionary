// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetTatoebaCollection on Isar {
  IsarCollection<Tatoeba> get tatoebas => this.collection();
}

const TatoebaSchema = CollectionSchema(
  name: r'Tatoeba',
  id: -5039320624282641788,
  properties: {
    r'sentence': PropertySchema(
      id: 0,
      name: r'sentence',
      type: IsarType.string,
    ),
    r'translations': PropertySchema(
      id: 1,
      name: r'translations',
      type: IsarType.objectList,
      target: r'Translation',
    )
  },
  estimateSize: _tatoebaEstimateSize,
  serialize: _tatoebaSerialize,
  deserialize: _tatoebaDeserialize,
  deserializeProp: _tatoebaDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Translation': TranslationSchema},
  getId: _tatoebaGetId,
  getLinks: _tatoebaGetLinks,
  attach: _tatoebaAttach,
  version: '3.0.5',
);

int _tatoebaEstimateSize(
  Tatoeba object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.sentence.length * 3;
  bytesCount += 3 + object.translations.length * 3;
  {
    final offsets = allOffsets[Translation]!;
    for (var i = 0; i < object.translations.length; i++) {
      final value = object.translations[i];
      bytesCount += TranslationSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _tatoebaSerialize(
  Tatoeba object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.sentence);
  writer.writeObjectList<Translation>(
    offsets[1],
    allOffsets,
    TranslationSchema.serialize,
    object.translations,
  );
}

Tatoeba _tatoebaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Tatoeba(
    id: id,
    sentence: reader.readString(offsets[0]),
    translations: reader.readObjectList<Translation>(
          offsets[1],
          TranslationSchema.deserialize,
          allOffsets,
          Translation(),
        ) ??
        [],
  );
  return object;
}

P _tatoebaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readObjectList<Translation>(
            offset,
            TranslationSchema.deserialize,
            allOffsets,
            Translation(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tatoebaGetId(Tatoeba object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tatoebaGetLinks(Tatoeba object) {
  return [];
}

void _tatoebaAttach(IsarCollection<dynamic> col, Id id, Tatoeba object) {
  object.id = id;
}

extension TatoebaQueryWhereSort on QueryBuilder<Tatoeba, Tatoeba, QWhere> {
  QueryBuilder<Tatoeba, Tatoeba, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TatoebaQueryWhere on QueryBuilder<Tatoeba, Tatoeba, QWhereClause> {
  QueryBuilder<Tatoeba, Tatoeba, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Tatoeba, Tatoeba, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterWhereClause> idBetween(
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

extension TatoebaQueryFilter
    on QueryBuilder<Tatoeba, Tatoeba, QFilterCondition> {
  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> sentenceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> sentenceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> sentenceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> sentenceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sentence',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> sentenceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> sentenceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> sentenceContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> sentenceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sentence',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> sentenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sentence',
        value: '',
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> sentenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sentence',
        value: '',
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      translationsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'translations',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> translationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'translations',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      translationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'translations',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      translationsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'translations',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      translationsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'translations',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      translationsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'translations',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension TatoebaQueryObject
    on QueryBuilder<Tatoeba, Tatoeba, QFilterCondition> {
  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> translationsElement(
      FilterQuery<Translation> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'translations');
    });
  }
}

extension TatoebaQueryLinks
    on QueryBuilder<Tatoeba, Tatoeba, QFilterCondition> {}

extension TatoebaQuerySortBy on QueryBuilder<Tatoeba, Tatoeba, QSortBy> {
  QueryBuilder<Tatoeba, Tatoeba, QAfterSortBy> sortBySentence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentence', Sort.asc);
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterSortBy> sortBySentenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentence', Sort.desc);
    });
  }
}

extension TatoebaQuerySortThenBy
    on QueryBuilder<Tatoeba, Tatoeba, QSortThenBy> {
  QueryBuilder<Tatoeba, Tatoeba, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterSortBy> thenBySentence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentence', Sort.asc);
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterSortBy> thenBySentenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentence', Sort.desc);
    });
  }
}

extension TatoebaQueryWhereDistinct
    on QueryBuilder<Tatoeba, Tatoeba, QDistinct> {
  QueryBuilder<Tatoeba, Tatoeba, QDistinct> distinctBySentence(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sentence', caseSensitive: caseSensitive);
    });
  }
}

extension TatoebaQueryProperty
    on QueryBuilder<Tatoeba, Tatoeba, QQueryProperty> {
  QueryBuilder<Tatoeba, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Tatoeba, String, QQueryOperations> sentenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sentence');
    });
  }

  QueryBuilder<Tatoeba, List<Translation>, QQueryOperations>
      translationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'translations');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

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
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const TranslationSchema = Schema(
  name: r'Translation',
  id: 2419298645870007561,
  properties: {
    r'language': PropertySchema(
      id: 0,
      name: r'language',
      type: IsarType.string,
    ),
    r'sentence': PropertySchema(
      id: 1,
      name: r'sentence',
      type: IsarType.string,
    )
  },
  estimateSize: _translationEstimateSize,
  serialize: _translationSerialize,
  deserialize: _translationDeserialize,
  deserializeProp: _translationDeserializeProp,
);

int _translationEstimateSize(
  Translation object,
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
    final value = object.sentence;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _translationSerialize(
  Translation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.language);
  writer.writeString(offsets[1], object.sentence);
}

Translation _translationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Translation(
    language: reader.readStringOrNull(offsets[0]),
    sentence: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _translationDeserializeProp<P>(
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

extension TranslationQueryFilter
    on QueryBuilder<Translation, Translation, QFilterCondition> {
  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      languageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      languageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition> languageEqualTo(
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

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
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

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
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

  QueryBuilder<Translation, Translation, QAfterFilterCondition> languageBetween(
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

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
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

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
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

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      languageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition> languageMatches(
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

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      sentenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sentence',
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      sentenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sentence',
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition> sentenceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      sentenceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      sentenceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition> sentenceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sentence',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      sentenceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      sentenceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      sentenceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition> sentenceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sentence',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      sentenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sentence',
        value: '',
      ));
    });
  }

  QueryBuilder<Translation, Translation, QAfterFilterCondition>
      sentenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sentence',
        value: '',
      ));
    });
  }
}

extension TranslationQueryObject
    on QueryBuilder<Translation, Translation, QFilterCondition> {}
