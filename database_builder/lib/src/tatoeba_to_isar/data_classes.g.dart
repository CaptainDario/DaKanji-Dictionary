// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetExampleSentenceCollection on Isar {
  IsarCollection<ExampleSentence> get exampleSentences => this.collection();
}

const ExampleSentenceSchema = CollectionSchema(
  name: r'ExampleSentence',
  id: 5737446170479935289,
  properties: {
    r'mecabBaseForms': PropertySchema(
      id: 0,
      name: r'mecabBaseForms',
      type: IsarType.stringList,
    ),
    r'mecabPos': PropertySchema(
      id: 1,
      name: r'mecabPos',
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
  estimateSize: _exampleSentenceEstimateSize,
  serialize: _exampleSentenceSerialize,
  deserialize: _exampleSentenceDeserialize,
  deserializeProp: _exampleSentenceDeserializeProp,
  idName: r'id',
  indexes: {
    r'mecabBaseForms': IndexSchema(
      id: -8927370786215504289,
      name: r'mecabBaseForms',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'mecabBaseForms',
          type: IndexType.hashElements,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'Translation': TranslationSchema},
  getId: _exampleSentenceGetId,
  getLinks: _exampleSentenceGetLinks,
  attach: _exampleSentenceAttach,
  version: '3.1.8',
);

int _exampleSentenceEstimateSize(
  ExampleSentence object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.mecabBaseForms.length * 3;
  {
    for (var i = 0; i < object.mecabBaseForms.length; i++) {
      final value = object.mecabBaseForms[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.mecabPos.length * 3;
  {
    for (var i = 0; i < object.mecabPos.length; i++) {
      final value = object.mecabPos[i];
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

void _exampleSentenceSerialize(
  ExampleSentence object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.mecabBaseForms);
  writer.writeStringList(offsets[1], object.mecabPos);
  writer.writeString(offsets[2], object.sentence);
  writer.writeObjectList<Translation>(
    offsets[3],
    allOffsets,
    TranslationSchema.serialize,
    object.translations,
  );
}

ExampleSentence _exampleSentenceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExampleSentence(
    id: id,
    mecabBaseForms: reader.readStringList(offsets[0]) ?? [],
    mecabPos: reader.readStringList(offsets[1]) ?? [],
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

P _exampleSentenceDeserializeProp<P>(
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

Id _exampleSentenceGetId(ExampleSentence object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _exampleSentenceGetLinks(ExampleSentence object) {
  return [];
}

void _exampleSentenceAttach(
    IsarCollection<dynamic> col, Id id, ExampleSentence object) {
  object.id = id;
}

extension ExampleSentenceQueryWhereSort
    on QueryBuilder<ExampleSentence, ExampleSentence, QWhere> {
  QueryBuilder<ExampleSentence, ExampleSentence, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ExampleSentenceQueryWhere
    on QueryBuilder<ExampleSentence, ExampleSentence, QWhereClause> {
  QueryBuilder<ExampleSentence, ExampleSentence, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterWhereClause> idBetween(
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterWhereClause>
      mecabBaseFormsElementEqualTo(String mecabBaseFormsElement) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'mecabBaseForms',
        value: [mecabBaseFormsElement],
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterWhereClause>
      mecabBaseFormsElementNotEqualTo(String mecabBaseFormsElement) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mecabBaseForms',
              lower: [],
              upper: [mecabBaseFormsElement],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mecabBaseForms',
              lower: [mecabBaseFormsElement],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mecabBaseForms',
              lower: [mecabBaseFormsElement],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mecabBaseForms',
              lower: [],
              upper: [mecabBaseFormsElement],
              includeUpper: false,
            ));
      }
    });
  }
}

extension ExampleSentenceQueryFilter
    on QueryBuilder<ExampleSentence, ExampleSentence, QFilterCondition> {
  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mecabBaseForms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mecabBaseForms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mecabBaseForms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mecabBaseForms',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mecabBaseForms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mecabBaseForms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mecabBaseForms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mecabBaseForms',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mecabBaseForms',
        value: '',
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mecabBaseForms',
        value: '',
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabBaseForms',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabBaseForms',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabBaseForms',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabBaseForms',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabBaseForms',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabBaseFormsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mecabBaseForms',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosElementEqualTo(
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosElementLessThan(
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosElementBetween(
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosElementEndsWith(
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mecabPos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mecabPos',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mecabPos',
        value: '',
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mecabPos',
        value: '',
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosLengthEqualTo(int length) {
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosIsEmpty() {
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosIsNotEmpty() {
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosLengthLessThan(
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      mecabPosLengthBetween(
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      sentenceEqualTo(
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      sentenceGreaterThan(
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      sentenceLessThan(
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      sentenceBetween(
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      sentenceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sentence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      sentenceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sentence',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      sentenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sentence',
        value: '',
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      sentenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sentence',
        value: '',
      ));
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      translationsIsEmpty() {
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
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

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
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

extension ExampleSentenceQueryObject
    on QueryBuilder<ExampleSentence, ExampleSentence, QFilterCondition> {
  QueryBuilder<ExampleSentence, ExampleSentence, QAfterFilterCondition>
      translationsElement(FilterQuery<Translation> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'translations');
    });
  }
}

extension ExampleSentenceQueryLinks
    on QueryBuilder<ExampleSentence, ExampleSentence, QFilterCondition> {}

extension ExampleSentenceQuerySortBy
    on QueryBuilder<ExampleSentence, ExampleSentence, QSortBy> {
  QueryBuilder<ExampleSentence, ExampleSentence, QAfterSortBy>
      sortBySentence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentence', Sort.asc);
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterSortBy>
      sortBySentenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentence', Sort.desc);
    });
  }
}

extension ExampleSentenceQuerySortThenBy
    on QueryBuilder<ExampleSentence, ExampleSentence, QSortThenBy> {
  QueryBuilder<ExampleSentence, ExampleSentence, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterSortBy>
      thenBySentence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentence', Sort.asc);
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QAfterSortBy>
      thenBySentenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentence', Sort.desc);
    });
  }
}

extension ExampleSentenceQueryWhereDistinct
    on QueryBuilder<ExampleSentence, ExampleSentence, QDistinct> {
  QueryBuilder<ExampleSentence, ExampleSentence, QDistinct>
      distinctByMecabBaseForms() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mecabBaseForms');
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QDistinct>
      distinctByMecabPos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mecabPos');
    });
  }

  QueryBuilder<ExampleSentence, ExampleSentence, QDistinct> distinctBySentence(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sentence', caseSensitive: caseSensitive);
    });
  }
}

extension ExampleSentenceQueryProperty
    on QueryBuilder<ExampleSentence, ExampleSentence, QQueryProperty> {
  QueryBuilder<ExampleSentence, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ExampleSentence, List<String>, QQueryOperations>
      mecabBaseFormsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mecabBaseForms');
    });
  }

  QueryBuilder<ExampleSentence, List<String>, QQueryOperations>
      mecabPosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mecabPos');
    });
  }

  QueryBuilder<ExampleSentence, String, QQueryOperations> sentenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sentence');
    });
  }

  QueryBuilder<ExampleSentence, List<Translation>, QQueryOperations>
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
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

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
