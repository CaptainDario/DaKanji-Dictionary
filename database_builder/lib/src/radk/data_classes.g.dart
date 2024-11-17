// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRadkCollection on Isar {
  IsarCollection<Radk> get radks => this.collection();
}

const RadkSchema = CollectionSchema(
  name: r'Radk',
  id: 4562041900021887770,
  properties: {
    r'kanjis': PropertySchema(
      id: 0,
      name: r'kanjis',
      type: IsarType.stringList,
    ),
    r'radical': PropertySchema(
      id: 1,
      name: r'radical',
      type: IsarType.string,
    ),
    r'radicalStrokeCount': PropertySchema(
      id: 2,
      name: r'radicalStrokeCount',
      type: IsarType.long,
    )
  },
  estimateSize: _radkEstimateSize,
  serialize: _radkSerialize,
  deserialize: _radkDeserialize,
  deserializeProp: _radkDeserializeProp,
  idName: r'id',
  indexes: {
    r'radical': IndexSchema(
      id: -5731891106966412493,
      name: r'radical',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'radical',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'kanjis': IndexSchema(
      id: 2657199644921628134,
      name: r'kanjis',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'kanjis',
          type: IndexType.hashElements,
          caseSensitive: true,
        )
      ],
    ),
    r'radicalStrokeCount': IndexSchema(
      id: 324071907776355455,
      name: r'radicalStrokeCount',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'radicalStrokeCount',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _radkGetId,
  getLinks: _radkGetLinks,
  attach: _radkAttach,
  version: '3.1.8',
);

int _radkEstimateSize(
  Radk object,
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
  bytesCount += 3 + object.radical.length * 3;
  return bytesCount;
}

void _radkSerialize(
  Radk object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.kanjis);
  writer.writeString(offsets[1], object.radical);
  writer.writeLong(offsets[2], object.radicalStrokeCount);
}

Radk _radkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Radk(
    kanjis: reader.readStringList(offsets[0]) ?? [],
    radical: reader.readString(offsets[1]),
    radicalStrokeCount: reader.readLong(offsets[2]),
  );
  object.id = id;
  return object;
}

P _radkDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _radkGetId(Radk object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _radkGetLinks(Radk object) {
  return [];
}

void _radkAttach(IsarCollection<dynamic> col, Id id, Radk object) {
  object.id = id;
}

extension RadkQueryWhereSort on QueryBuilder<Radk, Radk, QWhere> {
  QueryBuilder<Radk, Radk, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Radk, Radk, QAfterWhere> anyRadicalStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'radicalStrokeCount'),
      );
    });
  }
}

extension RadkQueryWhere on QueryBuilder<Radk, Radk, QWhereClause> {
  QueryBuilder<Radk, Radk, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Radk, Radk, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Radk, Radk, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Radk, Radk, QAfterWhereClause> idBetween(
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

  QueryBuilder<Radk, Radk, QAfterWhereClause> radicalEqualTo(String radical) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'radical',
        value: [radical],
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterWhereClause> radicalNotEqualTo(
      String radical) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'radical',
              lower: [],
              upper: [radical],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'radical',
              lower: [radical],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'radical',
              lower: [radical],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'radical',
              lower: [],
              upper: [radical],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Radk, Radk, QAfterWhereClause> kanjisElementEqualTo(
      String kanjisElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'kanjis',
        value: [kanjisElement],
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterWhereClause> kanjisElementNotEqualTo(
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

  QueryBuilder<Radk, Radk, QAfterWhereClause> radicalStrokeCountEqualTo(
      int radicalStrokeCount) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'radicalStrokeCount',
        value: [radicalStrokeCount],
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterWhereClause> radicalStrokeCountNotEqualTo(
      int radicalStrokeCount) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'radicalStrokeCount',
              lower: [],
              upper: [radicalStrokeCount],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'radicalStrokeCount',
              lower: [radicalStrokeCount],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'radicalStrokeCount',
              lower: [radicalStrokeCount],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'radicalStrokeCount',
              lower: [],
              upper: [radicalStrokeCount],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Radk, Radk, QAfterWhereClause> radicalStrokeCountGreaterThan(
    int radicalStrokeCount, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'radicalStrokeCount',
        lower: [radicalStrokeCount],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterWhereClause> radicalStrokeCountLessThan(
    int radicalStrokeCount, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'radicalStrokeCount',
        lower: [],
        upper: [radicalStrokeCount],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterWhereClause> radicalStrokeCountBetween(
    int lowerRadicalStrokeCount,
    int upperRadicalStrokeCount, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'radicalStrokeCount',
        lower: [lowerRadicalStrokeCount],
        includeLower: includeLower,
        upper: [upperRadicalStrokeCount],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RadkQueryFilter on QueryBuilder<Radk, Radk, QFilterCondition> {
  QueryBuilder<Radk, Radk, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisElementEqualTo(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisElementGreaterThan(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisElementLessThan(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisElementBetween(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisElementStartsWith(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisElementEndsWith(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisElementContains(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisElementMatches(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kanjis',
        value: '',
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kanjis',
        value: '',
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisLengthEqualTo(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisIsEmpty() {
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisIsNotEmpty() {
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisLengthLessThan(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisLengthGreaterThan(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> kanjisLengthBetween(
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

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'radical',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'radical',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'radical',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'radical',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'radical',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'radical',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'radical',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'radical',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'radical',
        value: '',
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'radical',
        value: '',
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalStrokeCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'radicalStrokeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalStrokeCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'radicalStrokeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalStrokeCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'radicalStrokeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Radk, Radk, QAfterFilterCondition> radicalStrokeCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'radicalStrokeCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RadkQueryObject on QueryBuilder<Radk, Radk, QFilterCondition> {}

extension RadkQueryLinks on QueryBuilder<Radk, Radk, QFilterCondition> {}

extension RadkQuerySortBy on QueryBuilder<Radk, Radk, QSortBy> {
  QueryBuilder<Radk, Radk, QAfterSortBy> sortByRadical() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radical', Sort.asc);
    });
  }

  QueryBuilder<Radk, Radk, QAfterSortBy> sortByRadicalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radical', Sort.desc);
    });
  }

  QueryBuilder<Radk, Radk, QAfterSortBy> sortByRadicalStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radicalStrokeCount', Sort.asc);
    });
  }

  QueryBuilder<Radk, Radk, QAfterSortBy> sortByRadicalStrokeCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radicalStrokeCount', Sort.desc);
    });
  }
}

extension RadkQuerySortThenBy on QueryBuilder<Radk, Radk, QSortThenBy> {
  QueryBuilder<Radk, Radk, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Radk, Radk, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Radk, Radk, QAfterSortBy> thenByRadical() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radical', Sort.asc);
    });
  }

  QueryBuilder<Radk, Radk, QAfterSortBy> thenByRadicalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radical', Sort.desc);
    });
  }

  QueryBuilder<Radk, Radk, QAfterSortBy> thenByRadicalStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radicalStrokeCount', Sort.asc);
    });
  }

  QueryBuilder<Radk, Radk, QAfterSortBy> thenByRadicalStrokeCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'radicalStrokeCount', Sort.desc);
    });
  }
}

extension RadkQueryWhereDistinct on QueryBuilder<Radk, Radk, QDistinct> {
  QueryBuilder<Radk, Radk, QDistinct> distinctByKanjis() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kanjis');
    });
  }

  QueryBuilder<Radk, Radk, QDistinct> distinctByRadical(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'radical', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Radk, Radk, QDistinct> distinctByRadicalStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'radicalStrokeCount');
    });
  }
}

extension RadkQueryProperty on QueryBuilder<Radk, Radk, QQueryProperty> {
  QueryBuilder<Radk, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Radk, List<String>, QQueryOperations> kanjisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kanjis');
    });
  }

  QueryBuilder<Radk, String, QQueryOperations> radicalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'radical');
    });
  }

  QueryBuilder<Radk, int, QQueryOperations> radicalStrokeCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'radicalStrokeCount');
    });
  }
}
