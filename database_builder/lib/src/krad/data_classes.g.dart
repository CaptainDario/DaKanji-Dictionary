// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetKradCollection on Isar {
  IsarCollection<Krad> get krads => this.collection();
}

const KradSchema = CollectionSchema(
  name: r'Krad',
  id: 6654550373937044340,
  properties: {
    r'kanji': PropertySchema(id: 0, name: r'kanji', type: IsarType.string),
    r'kanjiStrokeCount': PropertySchema(
      id: 1,
      name: r'kanjiStrokeCount',
      type: IsarType.long,
    ),
    r'radicals': PropertySchema(
      id: 2,
      name: r'radicals',
      type: IsarType.stringList,
    ),
  },

  estimateSize: _kradEstimateSize,
  serialize: _kradSerialize,
  deserialize: _kradDeserialize,
  deserializeProp: _kradDeserializeProp,
  idName: r'id',
  indexes: {
    r'kanji': IndexSchema(
      id: -554343575354360898,
      name: r'kanji',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'kanji',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
    r'radicals': IndexSchema(
      id: -3629276625741146537,
      name: r'radicals',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'radicals',
          type: IndexType.hashElements,
          caseSensitive: true,
        ),
      ],
    ),
    r'kanjiStrokeCount': IndexSchema(
      id: 8215527850107644880,
      name: r'kanjiStrokeCount',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'kanjiStrokeCount',
          type: IndexType.value,
          caseSensitive: false,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _kradGetId,
  getLinks: _kradGetLinks,
  attach: _kradAttach,
  version: '3.2.0-dev.2',
);

int _kradEstimateSize(
  Krad object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.kanji.length * 3;
  bytesCount += 3 + object.radicals.length * 3;
  {
    for (var i = 0; i < object.radicals.length; i++) {
      final value = object.radicals[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _kradSerialize(
  Krad object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.kanji);
  writer.writeLong(offsets[1], object.kanjiStrokeCount);
  writer.writeStringList(offsets[2], object.radicals);
}

Krad _kradDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Krad(
    kanji: reader.readString(offsets[0]),
    kanjiStrokeCount: reader.readLong(offsets[1]),
    radicals: reader.readStringList(offsets[2]) ?? [],
  );
  object.id = id;
  return object;
}

P _kradDeserializeProp<P>(
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
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _kradGetId(Krad object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _kradGetLinks(Krad object) {
  return [];
}

void _kradAttach(IsarCollection<dynamic> col, Id id, Krad object) {
  object.id = id;
}

extension KradQueryWhereSort on QueryBuilder<Krad, Krad, QWhere> {
  QueryBuilder<Krad, Krad, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhere> anyKanjiStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'kanjiStrokeCount'),
      );
    });
  }
}

extension KradQueryWhere on QueryBuilder<Krad, Krad, QWhereClause> {
  QueryBuilder<Krad, Krad, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Krad, Krad, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhereClause> kanjiEqualTo(String kanji) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'kanji', value: [kanji]),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhereClause> kanjiNotEqualTo(String kanji) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'kanji',
                lower: [],
                upper: [kanji],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'kanji',
                lower: [kanji],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'kanji',
                lower: [kanji],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'kanji',
                lower: [],
                upper: [kanji],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhereClause> radicalsElementEqualTo(
    String radicalsElement,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'radicals',
          value: [radicalsElement],
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhereClause> radicalsElementNotEqualTo(
    String radicalsElement,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'radicals',
                lower: [],
                upper: [radicalsElement],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'radicals',
                lower: [radicalsElement],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'radicals',
                lower: [radicalsElement],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'radicals',
                lower: [],
                upper: [radicalsElement],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhereClause> kanjiStrokeCountEqualTo(
    int kanjiStrokeCount,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'kanjiStrokeCount',
          value: [kanjiStrokeCount],
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhereClause> kanjiStrokeCountNotEqualTo(
    int kanjiStrokeCount,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'kanjiStrokeCount',
                lower: [],
                upper: [kanjiStrokeCount],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'kanjiStrokeCount',
                lower: [kanjiStrokeCount],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'kanjiStrokeCount',
                lower: [kanjiStrokeCount],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'kanjiStrokeCount',
                lower: [],
                upper: [kanjiStrokeCount],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhereClause> kanjiStrokeCountGreaterThan(
    int kanjiStrokeCount, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'kanjiStrokeCount',
          lower: [kanjiStrokeCount],
          includeLower: include,
          upper: [],
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhereClause> kanjiStrokeCountLessThan(
    int kanjiStrokeCount, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'kanjiStrokeCount',
          lower: [],
          upper: [kanjiStrokeCount],
          includeUpper: include,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterWhereClause> kanjiStrokeCountBetween(
    int lowerKanjiStrokeCount,
    int upperKanjiStrokeCount, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'kanjiStrokeCount',
          lower: [lowerKanjiStrokeCount],
          includeLower: includeLower,
          upper: [upperKanjiStrokeCount],
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension KradQueryFilter on QueryBuilder<Krad, Krad, QFilterCondition> {
  QueryBuilder<Krad, Krad, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'kanji',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'kanji',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'kanji',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'kanji',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'kanji',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'kanji',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'kanji',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'kanji',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'kanji', value: ''),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'kanji', value: ''),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiStrokeCountEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'kanjiStrokeCount', value: value),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiStrokeCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'kanjiStrokeCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiStrokeCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'kanjiStrokeCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> kanjiStrokeCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'kanjiStrokeCount',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'radicals',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'radicals',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'radicals',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'radicals',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'radicals',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'radicals',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsElementContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'radicals',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsElementMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'radicals',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'radicals', value: ''),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'radicals', value: ''),
      );
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsLengthEqualTo(
    int length,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'radicals', length, true, length, true);
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'radicals', 0, true, 0, true);
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'radicals', 0, false, 999999, true);
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'radicals', 0, true, length, include);
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'radicals', length, include, 999999, true);
    });
  }

  QueryBuilder<Krad, Krad, QAfterFilterCondition> radicalsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'radicals',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension KradQueryObject on QueryBuilder<Krad, Krad, QFilterCondition> {}

extension KradQueryLinks on QueryBuilder<Krad, Krad, QFilterCondition> {}

extension KradQuerySortBy on QueryBuilder<Krad, Krad, QSortBy> {
  QueryBuilder<Krad, Krad, QAfterSortBy> sortByKanji() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanji', Sort.asc);
    });
  }

  QueryBuilder<Krad, Krad, QAfterSortBy> sortByKanjiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanji', Sort.desc);
    });
  }

  QueryBuilder<Krad, Krad, QAfterSortBy> sortByKanjiStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanjiStrokeCount', Sort.asc);
    });
  }

  QueryBuilder<Krad, Krad, QAfterSortBy> sortByKanjiStrokeCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanjiStrokeCount', Sort.desc);
    });
  }
}

extension KradQuerySortThenBy on QueryBuilder<Krad, Krad, QSortThenBy> {
  QueryBuilder<Krad, Krad, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Krad, Krad, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Krad, Krad, QAfterSortBy> thenByKanji() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanji', Sort.asc);
    });
  }

  QueryBuilder<Krad, Krad, QAfterSortBy> thenByKanjiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanji', Sort.desc);
    });
  }

  QueryBuilder<Krad, Krad, QAfterSortBy> thenByKanjiStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanjiStrokeCount', Sort.asc);
    });
  }

  QueryBuilder<Krad, Krad, QAfterSortBy> thenByKanjiStrokeCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanjiStrokeCount', Sort.desc);
    });
  }
}

extension KradQueryWhereDistinct on QueryBuilder<Krad, Krad, QDistinct> {
  QueryBuilder<Krad, Krad, QDistinct> distinctByKanji({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kanji', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Krad, Krad, QDistinct> distinctByKanjiStrokeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kanjiStrokeCount');
    });
  }

  QueryBuilder<Krad, Krad, QDistinct> distinctByRadicals() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'radicals');
    });
  }
}

extension KradQueryProperty on QueryBuilder<Krad, Krad, QQueryProperty> {
  QueryBuilder<Krad, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Krad, String, QQueryOperations> kanjiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kanji');
    });
  }

  QueryBuilder<Krad, int, QQueryOperations> kanjiStrokeCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kanjiStrokeCount');
    });
  }

  QueryBuilder<Krad, List<String>, QQueryOperations> radicalsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'radicals');
    });
  }
}
