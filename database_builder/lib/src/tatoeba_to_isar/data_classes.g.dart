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
    r'mecabPos': PropertySchema(
      id: 0,
      name: r'mecabPos',
      type: IsarType.stringList,
    ),
    r'mecabSurfaces': PropertySchema(
      id: 1,
      name: r'mecabSurfaces',
      type: IsarType.stringList,
    ),
    r'sentence': PropertySchema(
      id: 2,
      name: r'sentence',
      type: IsarType.string,
    ),
    r'translations': PropertySchema(
      id: 3,
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
  bytesCount += 3 + object.mecabPos.length * 3;
  {
    for (var i = 0; i < object.mecabPos.length; i++) {
      final value = object.mecabPos[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.mecabSurfaces.length * 3;
  {
    for (var i = 0; i < object.mecabSurfaces.length; i++) {
      final value = object.mecabSurfaces[i];
      bytesCount += value.length * 3;
    }
  }
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
  writer.writeStringList(offsets[0], object.mecabPos);
  writer.writeStringList(offsets[1], object.mecabSurfaces);
  writer.writeString(offsets[2], object.sentence);
  writer.writeObjectList<Translation>(
    offsets[3],
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
    mecabPos: reader.readStringList(offsets[0]) ?? [],
    mecabSurfaces: reader.readStringList(offsets[1]) ?? [],
    sentence: reader.readString(offsets[2]),
    translations: reader.readObjectList<Translation>(
          offsets[3],
          TranslationSchema.deserialize,
          allOffsets,
          Translation(),
        ) ??
        const [],
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
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readObjectList<Translation>(
            offset,
            TranslationSchema.deserialize,
            allOffsets,
            Translation(),
          ) ??
          const []) as P;
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

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> mecabPosElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mecabPos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabPosElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mecabPos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> mecabPosElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mecabPos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> mecabPosElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mecabPos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabPosElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mecabPos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> mecabPosElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mecabPos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> mecabPosElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mecabPos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> mecabPosElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mecabPos',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabPosElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mecabPos',
        value: '',
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabPosElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mecabPos',
        value: '',
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> mecabPosLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabPos',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> mecabPosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabPos',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> mecabPosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabPos',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> mecabPosLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabPos',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabPosLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabPos',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> mecabPosLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabPos',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mecabSurfaces',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mecabSurfaces',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mecabSurfaces',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mecabSurfaces',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mecabSurfaces',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mecabSurfaces',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mecabSurfaces',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mecabSurfaces',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mecabSurfaces',
        value: '',
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mecabSurfaces',
        value: '',
      ));
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabSurfaces',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition> mecabSurfacesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabSurfaces',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabSurfaces',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabSurfaces',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabSurfaces',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QAfterFilterCondition>
      mecabSurfacesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabSurfaces',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
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
  QueryBuilder<Tatoeba, Tatoeba, QDistinct> distinctByMecabPos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mecabPos');
    });
  }

  QueryBuilder<Tatoeba, Tatoeba, QDistinct> distinctByMecabSurfaces() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mecabSurfaces');
    });
  }

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

  QueryBuilder<Tatoeba, List<String>, QQueryOperations> mecabPosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mecabPos');
    });
  }

  QueryBuilder<Tatoeba, List<String>, QQueryOperations>
      mecabSurfacesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mecabSurfaces');
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
