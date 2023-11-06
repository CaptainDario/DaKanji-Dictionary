// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetKanjiSVGCollection on Isar {
  IsarCollection<KanjiSVG> get kanjiSVGs => this.collection();
}

const KanjiSVGSchema = CollectionSchema(
  name: r'KanjiSVG',
  id: -8450710768706982741,
  properties: {
    r'character': PropertySchema(
      id: 0,
      name: r'character',
      type: IsarType.string,
    ),
    r'kanjiVGId': PropertySchema(
      id: 1,
      name: r'kanjiVGId',
      type: IsarType.string,
    ),
    r'radicals': PropertySchema(
      id: 2,
      name: r'radicals',
      type: IsarType.stringList,
    ),
    r'strokes': PropertySchema(
      id: 3,
      name: r'strokes',
      type: IsarType.int,
    ),
    r'svg': PropertySchema(
      id: 4,
      name: r'svg',
      type: IsarType.string,
    )
  },
  estimateSize: _kanjiSVGEstimateSize,
  serialize: _kanjiSVGSerialize,
  deserialize: _kanjiSVGDeserialize,
  deserializeProp: _kanjiSVGDeserializeProp,
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
    ),
    r'strokes': IndexSchema(
      id: -9153716155763744726,
      name: r'strokes',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'strokes',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _kanjiSVGGetId,
  getLinks: _kanjiSVGGetLinks,
  attach: _kanjiSVGAttach,
  version: '3.1.0+1',
);

int _kanjiSVGEstimateSize(
  KanjiSVG object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.character.length * 3;
  bytesCount += 3 + object.kanjiVGId.length * 3;
  bytesCount += 3 + object.radicals.length * 3;
  {
    for (var i = 0; i < object.radicals.length; i++) {
      final value = object.radicals[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.svg.length * 3;
  return bytesCount;
}

void _kanjiSVGSerialize(
  KanjiSVG object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.character);
  writer.writeString(offsets[1], object.kanjiVGId);
  writer.writeStringList(offsets[2], object.radicals);
  writer.writeInt(offsets[3], object.strokes);
  writer.writeString(offsets[4], object.svg);
}

KanjiSVG _kanjiSVGDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = KanjiSVG(
    character: reader.readString(offsets[0]),
    kanjiVGId: reader.readString(offsets[1]),
    radicals: reader.readStringList(offsets[2]) ?? [],
    strokes: reader.readInt(offsets[3]),
    svg: reader.readString(offsets[4]),
  );
  object.id = id;
  return object;
}

P _kanjiSVGDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readInt(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _kanjiSVGGetId(KanjiSVG object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _kanjiSVGGetLinks(KanjiSVG object) {
  return [];
}

void _kanjiSVGAttach(IsarCollection<dynamic> col, Id id, KanjiSVG object) {
  object.id = id;
}

extension KanjiSVGQueryWhereSort on QueryBuilder<KanjiSVG, KanjiSVG, QWhere> {
  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhere> anyStrokes() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'strokes'),
      );
    });
  }
}

extension KanjiSVGQueryWhere on QueryBuilder<KanjiSVG, KanjiSVG, QWhereClause> {
  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhereClause> idBetween(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhereClause> characterEqualTo(
      String character) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'character',
        value: [character],
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhereClause> characterNotEqualTo(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhereClause> strokesEqualTo(
      int strokes) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'strokes',
        value: [strokes],
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhereClause> strokesNotEqualTo(
      int strokes) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'strokes',
              lower: [],
              upper: [strokes],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'strokes',
              lower: [strokes],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'strokes',
              lower: [strokes],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'strokes',
              lower: [],
              upper: [strokes],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhereClause> strokesGreaterThan(
    int strokes, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'strokes',
        lower: [strokes],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhereClause> strokesLessThan(
    int strokes, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'strokes',
        lower: [],
        upper: [strokes],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterWhereClause> strokesBetween(
    int lowerStrokes,
    int upperStrokes, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'strokes',
        lower: [lowerStrokes],
        includeLower: includeLower,
        upper: [upperStrokes],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension KanjiSVGQueryFilter
    on QueryBuilder<KanjiSVG, KanjiSVG, QFilterCondition> {
  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterEqualTo(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterGreaterThan(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterLessThan(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterBetween(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterStartsWith(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterEndsWith(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterContains(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterMatches(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'character',
        value: '',
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      characterIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'character',
        value: '',
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> idBetween(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kanjiVGId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kanjiVGId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kanjiVGId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kanjiVGId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kanjiVGId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kanjiVGId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kanjiVGId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kanjiVGId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kanjiVGId',
        value: '',
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      kanjiVGIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kanjiVGId',
        value: '',
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'radicals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'radicals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'radicals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'radicals',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'radicals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'radicals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'radicals',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'radicals',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'radicals',
        value: '',
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'radicals',
        value: '',
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> radicalsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'radicals',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> radicalsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'radicals',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> radicalsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'radicals',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'radicals',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'radicals',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> radicalsLengthBetween(
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

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> strokesEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'strokes',
        value: value,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> strokesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'strokes',
        value: value,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> strokesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'strokes',
        value: value,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> strokesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'strokes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'svg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'svg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'svg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'svg',
        value: '',
      ));
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'svg',
        value: '',
      ));
    });
  }
}

extension KanjiSVGQueryObject
    on QueryBuilder<KanjiSVG, KanjiSVG, QFilterCondition> {}

extension KanjiSVGQueryLinks
    on QueryBuilder<KanjiSVG, KanjiSVG, QFilterCondition> {}

extension KanjiSVGQuerySortBy on QueryBuilder<KanjiSVG, KanjiSVG, QSortBy> {
  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByCharacter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'character', Sort.asc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByCharacterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'character', Sort.desc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByKanjiVGId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanjiVGId', Sort.asc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByKanjiVGIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanjiVGId', Sort.desc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByStrokes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'strokes', Sort.asc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByStrokesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'strokes', Sort.desc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortBySvg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svg', Sort.asc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortBySvgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svg', Sort.desc);
    });
  }
}

extension KanjiSVGQuerySortThenBy
    on QueryBuilder<KanjiSVG, KanjiSVG, QSortThenBy> {
  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByCharacter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'character', Sort.asc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByCharacterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'character', Sort.desc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByKanjiVGId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanjiVGId', Sort.asc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByKanjiVGIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kanjiVGId', Sort.desc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByStrokes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'strokes', Sort.asc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByStrokesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'strokes', Sort.desc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenBySvg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svg', Sort.asc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenBySvgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svg', Sort.desc);
    });
  }
}

extension KanjiSVGQueryWhereDistinct
    on QueryBuilder<KanjiSVG, KanjiSVG, QDistinct> {
  QueryBuilder<KanjiSVG, KanjiSVG, QDistinct> distinctByCharacter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'character', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QDistinct> distinctByKanjiVGId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kanjiVGId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QDistinct> distinctByRadicals() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'radicals');
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QDistinct> distinctByStrokes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'strokes');
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QDistinct> distinctBySvg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'svg', caseSensitive: caseSensitive);
    });
  }
}

extension KanjiSVGQueryProperty
    on QueryBuilder<KanjiSVG, KanjiSVG, QQueryProperty> {
  QueryBuilder<KanjiSVG, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<KanjiSVG, String, QQueryOperations> characterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'character');
    });
  }

  QueryBuilder<KanjiSVG, String, QQueryOperations> kanjiVGIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kanjiVGId');
    });
  }

  QueryBuilder<KanjiSVG, List<String>, QQueryOperations> radicalsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'radicals');
    });
  }

  QueryBuilder<KanjiSVG, int, QQueryOperations> strokesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'strokes');
    });
  }

  QueryBuilder<KanjiSVG, String, QQueryOperations> svgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'svg');
    });
  }
}
