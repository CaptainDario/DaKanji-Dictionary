// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetEntryCollection on Isar {
  IsarCollection<Entry> get entrys => this.collection();
}

const EntrySchema = CollectionSchema(
  name: r'Entry',
  id: 744406108402872943,
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
  estimateSize: _entryEstimateSize,
  serialize: _entrySerialize,
  deserialize: _entryDeserialize,
  deserializeProp: _entryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'LanguageMeanings': LanguageMeaningsSchema},
  getId: _entryGetId,
  getLinks: _entryGetLinks,
  attach: _entryAttach,
  version: '3.0.2',
);

int _entryEstimateSize(
  Entry object,
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

void _entrySerialize(
  Entry object,
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

Entry _entryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Entry(
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

P _entryDeserializeProp<P>(
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

Id _entryGetId(Entry object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _entryGetLinks(Entry object) {
  return [];
}

void _entryAttach(IsarCollection<dynamic> col, Id id, Entry object) {
  object.id = id;
}

extension EntryQueryWhereSort on QueryBuilder<Entry, Entry, QWhere> {
  QueryBuilder<Entry, Entry, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EntryQueryWhere on QueryBuilder<Entry, Entry, QWhereClause> {
  QueryBuilder<Entry, Entry, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Entry, Entry, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Entry, Entry, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Entry, Entry, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Entry, Entry, QAfterWhereClause> idBetween(
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

extension EntryQueryFilter on QueryBuilder<Entry, Entry, QFilterCondition> {
  QueryBuilder<Entry, Entry, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Entry, Entry, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisElementEqualTo(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisElementGreaterThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisElementLessThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisElementBetween(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisElementStartsWith(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisElementEndsWith(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisElementContains(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisElementMatches(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kanjis',
        value: '',
      ));
    });
  }

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kanjis',
        value: '',
      ));
    });
  }

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisLengthEqualTo(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisIsEmpty() {
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisIsNotEmpty() {
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisLengthLessThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisLengthGreaterThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> kanjisLengthBetween(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> meaningsLengthEqualTo(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> meaningsIsEmpty() {
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> meaningsIsNotEmpty() {
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> meaningsLengthLessThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> meaningsLengthGreaterThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> meaningsLengthBetween(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> partOfSpeechElementEqualTo(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition>
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> partOfSpeechElementLessThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> partOfSpeechElementBetween(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition>
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> partOfSpeechElementEndsWith(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> partOfSpeechElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Entry, Entry, QAfterFilterCondition> partOfSpeechElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'partOfSpeech',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Entry, Entry, QAfterFilterCondition>
      partOfSpeechElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partOfSpeech',
        value: '',
      ));
    });
  }

  QueryBuilder<Entry, Entry, QAfterFilterCondition>
      partOfSpeechElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partOfSpeech',
        value: '',
      ));
    });
  }

  QueryBuilder<Entry, Entry, QAfterFilterCondition> partOfSpeechLengthEqualTo(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> partOfSpeechIsEmpty() {
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> partOfSpeechIsNotEmpty() {
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> partOfSpeechLengthLessThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition>
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> partOfSpeechLengthBetween(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsElementEqualTo(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsElementGreaterThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsElementLessThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsElementBetween(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsElementStartsWith(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsElementEndsWith(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsElementContains(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsElementMatches(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readings',
        value: '',
      ));
    });
  }

  QueryBuilder<Entry, Entry, QAfterFilterCondition>
      readingsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'readings',
        value: '',
      ));
    });
  }

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsLengthEqualTo(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsIsEmpty() {
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsIsNotEmpty() {
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsLengthLessThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsLengthGreaterThan(
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

  QueryBuilder<Entry, Entry, QAfterFilterCondition> readingsLengthBetween(
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

extension EntryQueryObject on QueryBuilder<Entry, Entry, QFilterCondition> {
  QueryBuilder<Entry, Entry, QAfterFilterCondition> meaningsElement(
      FilterQuery<LanguageMeanings> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'meanings');
    });
  }
}

extension EntryQueryLinks on QueryBuilder<Entry, Entry, QFilterCondition> {}

extension EntryQuerySortBy on QueryBuilder<Entry, Entry, QSortBy> {}

extension EntryQuerySortThenBy on QueryBuilder<Entry, Entry, QSortThenBy> {
  QueryBuilder<Entry, Entry, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Entry, Entry, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension EntryQueryWhereDistinct on QueryBuilder<Entry, Entry, QDistinct> {
  QueryBuilder<Entry, Entry, QDistinct> distinctByKanjis() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kanjis');
    });
  }

  QueryBuilder<Entry, Entry, QDistinct> distinctByPartOfSpeech() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partOfSpeech');
    });
  }

  QueryBuilder<Entry, Entry, QDistinct> distinctByReadings() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'readings');
    });
  }
}

extension EntryQueryProperty on QueryBuilder<Entry, Entry, QQueryProperty> {
  QueryBuilder<Entry, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Entry, List<String>, QQueryOperations> kanjisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kanjis');
    });
  }

  QueryBuilder<Entry, List<LanguageMeanings>, QQueryOperations>
      meaningsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meanings');
    });
  }

  QueryBuilder<Entry, List<String>, QQueryOperations> partOfSpeechProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partOfSpeech');
    });
  }

  QueryBuilder<Entry, List<String>, QQueryOperations> readingsProperty() {
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
