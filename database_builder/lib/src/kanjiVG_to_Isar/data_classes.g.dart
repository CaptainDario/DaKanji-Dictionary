// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetKanjiSVGCollection on Isar {
  IsarCollection<int, KanjiSVG> get kanjiSVGs => this.collection();
}

const KanjiSVGSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'KanjiSVG',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'kanjiVGId',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'character',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'svg',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'strokes',
        type: IsarType.int,
      ),
      IsarPropertySchema(
        name: 'radicals',
        type: IsarType.stringList,
      ),
    ],
    indexes: [
      IsarIndexSchema(
        name: 'character',
        properties: [
          "character",
        ],
        unique: false,
        hash: true,
      ),
      IsarIndexSchema(
        name: 'strokes',
        properties: [
          "strokes",
        ],
        unique: false,
        hash: false,
      ),
    ],
  ),
  converter: IsarObjectConverter<int, KanjiSVG>(
    serialize: serializeKanjiSVG,
    deserialize: deserializeKanjiSVG,
    deserializeProperty: deserializeKanjiSVGProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeKanjiSVG(IsarWriter writer, KanjiSVG object) {
  IsarCore.writeString(writer, 1, object.kanjiVGId);
  IsarCore.writeString(writer, 2, object.character);
  IsarCore.writeString(writer, 3, object.svg);
  IsarCore.writeInt(writer, 4, object.strokes);
  {
    final list = object.radicals;
    final listWriter = IsarCore.beginList(writer, 5, list.length);
    for (var i = 0; i < list.length; i++) {
      IsarCore.writeString(listWriter, i, list[i]);
    }
    IsarCore.endList(writer, listWriter);
  }
  return object.id;
}

@isarProtected
KanjiSVG deserializeKanjiSVG(IsarReader reader) {
  final String _kanjiVGId;
  _kanjiVGId = IsarCore.readString(reader, 1) ?? '';
  final String _character;
  _character = IsarCore.readString(reader, 2) ?? '';
  final String _svg;
  _svg = IsarCore.readString(reader, 3) ?? '';
  final int _strokes;
  _strokes = IsarCore.readInt(reader, 4);
  final List<String> _radicals;
  {
    final length = IsarCore.readList(reader, 5, IsarCore.readerPtrPtr);
    {
      final reader = IsarCore.readerPtr;
      if (reader.isNull) {
        _radicals = const <String>[];
      } else {
        final list = List<String>.filled(length, '', growable: true);
        for (var i = 0; i < length; i++) {
          list[i] = IsarCore.readString(reader, i) ?? '';
        }
        IsarCore.freeReader(reader);
        _radicals = list;
      }
    }
  }
  final object = KanjiSVG(
    kanjiVGId: _kanjiVGId,
    character: _character,
    svg: _svg,
    strokes: _strokes,
    radicals: _radicals,
  );
  object.id = IsarCore.readId(reader);
  return object;
}

@isarProtected
dynamic deserializeKanjiSVGProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      return IsarCore.readInt(reader, 4);
    case 5:
      {
        final length = IsarCore.readList(reader, 5, IsarCore.readerPtrPtr);
        {
          final reader = IsarCore.readerPtr;
          if (reader.isNull) {
            return const <String>[];
          } else {
            final list = List<String>.filled(length, '', growable: true);
            for (var i = 0; i < length; i++) {
              list[i] = IsarCore.readString(reader, i) ?? '';
            }
            IsarCore.freeReader(reader);
            return list;
          }
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _KanjiSVGUpdate {
  bool call({
    required int id,
    String? kanjiVGId,
    String? character,
    String? svg,
    int? strokes,
  });
}

class _KanjiSVGUpdateImpl implements _KanjiSVGUpdate {
  const _KanjiSVGUpdateImpl(this.collection);

  final IsarCollection<int, KanjiSVG> collection;

  @override
  bool call({
    required int id,
    Object? kanjiVGId = ignore,
    Object? character = ignore,
    Object? svg = ignore,
    Object? strokes = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (kanjiVGId != ignore) 1: kanjiVGId as String?,
          if (character != ignore) 2: character as String?,
          if (svg != ignore) 3: svg as String?,
          if (strokes != ignore) 4: strokes as int?,
        }) >
        0;
  }
}

sealed class _KanjiSVGUpdateAll {
  int call({
    required List<int> id,
    String? kanjiVGId,
    String? character,
    String? svg,
    int? strokes,
  });
}

class _KanjiSVGUpdateAllImpl implements _KanjiSVGUpdateAll {
  const _KanjiSVGUpdateAllImpl(this.collection);

  final IsarCollection<int, KanjiSVG> collection;

  @override
  int call({
    required List<int> id,
    Object? kanjiVGId = ignore,
    Object? character = ignore,
    Object? svg = ignore,
    Object? strokes = ignore,
  }) {
    return collection.updateProperties(id, {
      if (kanjiVGId != ignore) 1: kanjiVGId as String?,
      if (character != ignore) 2: character as String?,
      if (svg != ignore) 3: svg as String?,
      if (strokes != ignore) 4: strokes as int?,
    });
  }
}

extension KanjiSVGUpdate on IsarCollection<int, KanjiSVG> {
  _KanjiSVGUpdate get update => _KanjiSVGUpdateImpl(this);

  _KanjiSVGUpdateAll get updateAll => _KanjiSVGUpdateAllImpl(this);
}

sealed class _KanjiSVGQueryUpdate {
  int call({
    String? kanjiVGId,
    String? character,
    String? svg,
    int? strokes,
  });
}

class _KanjiSVGQueryUpdateImpl implements _KanjiSVGQueryUpdate {
  const _KanjiSVGQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<KanjiSVG> query;
  final int? limit;

  @override
  int call({
    Object? kanjiVGId = ignore,
    Object? character = ignore,
    Object? svg = ignore,
    Object? strokes = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (kanjiVGId != ignore) 1: kanjiVGId as String?,
      if (character != ignore) 2: character as String?,
      if (svg != ignore) 3: svg as String?,
      if (strokes != ignore) 4: strokes as int?,
    });
  }
}

extension KanjiSVGQueryUpdate on IsarQuery<KanjiSVG> {
  _KanjiSVGQueryUpdate get updateFirst =>
      _KanjiSVGQueryUpdateImpl(this, limit: 1);

  _KanjiSVGQueryUpdate get updateAll => _KanjiSVGQueryUpdateImpl(this);
}

class _KanjiSVGQueryBuilderUpdateImpl implements _KanjiSVGQueryUpdate {
  const _KanjiSVGQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<KanjiSVG, KanjiSVG, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? kanjiVGId = ignore,
    Object? character = ignore,
    Object? svg = ignore,
    Object? strokes = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (kanjiVGId != ignore) 1: kanjiVGId as String?,
        if (character != ignore) 2: character as String?,
        if (svg != ignore) 3: svg as String?,
        if (strokes != ignore) 4: strokes as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension KanjiSVGQueryBuilderUpdate
    on QueryBuilder<KanjiSVG, KanjiSVG, QOperations> {
  _KanjiSVGQueryUpdate get updateFirst =>
      _KanjiSVGQueryBuilderUpdateImpl(this, limit: 1);

  _KanjiSVGQueryUpdate get updateAll => _KanjiSVGQueryBuilderUpdateImpl(this);
}

extension KanjiSVGQueryFilter
    on QueryBuilder<KanjiSVG, KanjiSVG, QFilterCondition> {
  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      kanjiVGIdGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      kanjiVGIdLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> kanjiVGIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      kanjiVGIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      characterGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      characterLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> characterIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      characterIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      svgGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> svgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> strokesEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> strokesGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      strokesGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> strokesLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      strokesLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> strokesBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition>
      radicalsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> radicalsIsEmpty() {
    return not().radicalsIsNotEmpty();
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterFilterCondition> radicalsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterOrEqualCondition(property: 5, value: null),
      );
    });
  }
}

extension KanjiSVGQueryObject
    on QueryBuilder<KanjiSVG, KanjiSVG, QFilterCondition> {}

extension KanjiSVGQuerySortBy on QueryBuilder<KanjiSVG, KanjiSVG, QSortBy> {
  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByKanjiVGId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByKanjiVGIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByCharacter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByCharacterDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortBySvg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortBySvgDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByStrokes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> sortByStrokesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }
}

extension KanjiSVGQuerySortThenBy
    on QueryBuilder<KanjiSVG, KanjiSVG, QSortThenBy> {
  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByKanjiVGId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByKanjiVGIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByCharacter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByCharacterDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenBySvg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenBySvgDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByStrokes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterSortBy> thenByStrokesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }
}

extension KanjiSVGQueryWhereDistinct
    on QueryBuilder<KanjiSVG, KanjiSVG, QDistinct> {
  QueryBuilder<KanjiSVG, KanjiSVG, QAfterDistinct> distinctByKanjiVGId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterDistinct> distinctByCharacter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterDistinct> distinctBySvg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterDistinct> distinctByStrokes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<KanjiSVG, KanjiSVG, QAfterDistinct> distinctByRadicals() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension KanjiSVGQueryProperty1
    on QueryBuilder<KanjiSVG, KanjiSVG, QProperty> {
  QueryBuilder<KanjiSVG, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<KanjiSVG, String, QAfterProperty> kanjiVGIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<KanjiSVG, String, QAfterProperty> characterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<KanjiSVG, String, QAfterProperty> svgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<KanjiSVG, int, QAfterProperty> strokesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<KanjiSVG, List<String>, QAfterProperty> radicalsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension KanjiSVGQueryProperty2<R>
    on QueryBuilder<KanjiSVG, R, QAfterProperty> {
  QueryBuilder<KanjiSVG, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<KanjiSVG, (R, String), QAfterProperty> kanjiVGIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<KanjiSVG, (R, String), QAfterProperty> characterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<KanjiSVG, (R, String), QAfterProperty> svgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<KanjiSVG, (R, int), QAfterProperty> strokesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<KanjiSVG, (R, List<String>), QAfterProperty> radicalsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension KanjiSVGQueryProperty3<R1, R2>
    on QueryBuilder<KanjiSVG, (R1, R2), QAfterProperty> {
  QueryBuilder<KanjiSVG, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<KanjiSVG, (R1, R2, String), QOperations> kanjiVGIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<KanjiSVG, (R1, R2, String), QOperations> characterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<KanjiSVG, (R1, R2, String), QOperations> svgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<KanjiSVG, (R1, R2, int), QOperations> strokesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<KanjiSVG, (R1, R2, List<String>), QOperations>
      radicalsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}
