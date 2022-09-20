// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';

import 'src/jm_enam_and_dict_to_hive/dataClasses_objectbox.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 5849156372886568225),
      name: 'Jm_enam_and_dict_Entry',
      lastPropertyId: const IdUid(4, 8015787405101520526),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6153382288320326000),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 5328687711126144919),
            name: 'kanjis',
            type: 30,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7022149344381025470),
            name: 'readings',
            type: 30,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8015787405101520526),
            name: 'partOfSpeech',
            type: 30,
            flags: 0)
      ],
      relations: <ModelRelation>[
        ModelRelation(
            id: const IdUid(1, 3597741689435807724),
            name: 'meanings',
            targetId: const IdUid(2, 4040414224621719292))
      ],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 4040414224621719292),
      name: 'Jm_enam_and_dict_LanguageMeanings',
      lastPropertyId: const IdUid(5, 5336287511665436563),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8714769272562857090),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3375743575507095743),
            name: 'language',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 1185948322938275311),
            name: 'meanings',
            type: 30,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Store openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) =>
    Store(getObjectBoxModel(),
        directory: directory,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(2, 4040414224621719292),
      lastIndexId: const IdUid(2, 2896452346381958147),
      lastRelationId: const IdUid(1, 3597741689435807724),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [5114285824026872297, 2896452346381958147],
      retiredPropertyUids: const [7856847432530140005, 5336287511665436563],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Jm_enam_and_dict_Entry: EntityDefinition<Jm_enam_and_dict_Entry>(
        model: _entities[0],
        toOneRelations: (Jm_enam_and_dict_Entry object) => [],
        toManyRelations: (Jm_enam_and_dict_Entry object) => {
              RelInfo<Jm_enam_and_dict_Entry>.toMany(1, object.id):
                  object.meanings
            },
        getId: (Jm_enam_and_dict_Entry object) => object.id,
        setId: (Jm_enam_and_dict_Entry object, int id) {
          object.id = id;
        },
        objectToFB: (Jm_enam_and_dict_Entry object, fb.Builder fbb) {
          final kanjisOffset = fbb.writeList(
              object.kanjis.map(fbb.writeString).toList(growable: false));
          final readingsOffset = fbb.writeList(
              object.readings.map(fbb.writeString).toList(growable: false));
          final partOfSpeechOffset = fbb.writeList(
              object.partOfSpeech.map(fbb.writeString).toList(growable: false));
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, kanjisOffset);
          fbb.addOffset(2, readingsOffset);
          fbb.addOffset(3, partOfSpeechOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Jm_enam_and_dict_Entry(
              kanjis: const fb.ListReader<String>(
                      fb.StringReader(asciiOptimization: true),
                      lazy: false)
                  .vTableGet(buffer, rootOffset, 6, []),
              readings: const fb.ListReader<String>(
                      fb.StringReader(asciiOptimization: true),
                      lazy: false)
                  .vTableGet(buffer, rootOffset, 8, []),
              partOfSpeech: const fb.ListReader<String>(
                      fb.StringReader(asciiOptimization: true),
                      lazy: false)
                  .vTableGet(buffer, rootOffset, 10, []))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          InternalToManyAccess.setRelInfo(
              object.meanings,
              store,
              RelInfo<Jm_enam_and_dict_Entry>.toMany(1, object.id),
              store.box<Jm_enam_and_dict_Entry>());
          return object;
        }),
    Jm_enam_and_dict_LanguageMeanings: EntityDefinition<
            Jm_enam_and_dict_LanguageMeanings>(
        model: _entities[1],
        toOneRelations: (Jm_enam_and_dict_LanguageMeanings object) => [],
        toManyRelations: (Jm_enam_and_dict_LanguageMeanings object) => {},
        getId: (Jm_enam_and_dict_LanguageMeanings object) => object.id,
        setId: (Jm_enam_and_dict_LanguageMeanings object, int id) {
          object.id = id;
        },
        objectToFB: (Jm_enam_and_dict_LanguageMeanings object, fb.Builder fbb) {
          final languageOffset = fbb.writeString(object.language);
          final meaningsOffset = fbb.writeList(
              object.meanings.map(fbb.writeString).toList(growable: false));
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, languageOffset);
          fbb.addOffset(2, meaningsOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Jm_enam_and_dict_LanguageMeanings(
              language: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              meanings: const fb.ListReader<String>(
                      fb.StringReader(asciiOptimization: true),
                      lazy: false)
                  .vTableGet(buffer, rootOffset, 8, []))
            ..id = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Jm_enam_and_dict_Entry] entity fields to define ObjectBox queries.
class Jm_enam_and_dict_Entry_ {
  /// see [Jm_enam_and_dict_Entry.id]
  static final id =
      QueryIntegerProperty<Jm_enam_and_dict_Entry>(_entities[0].properties[0]);

  /// see [Jm_enam_and_dict_Entry.kanjis]
  static final kanjis = QueryStringVectorProperty<Jm_enam_and_dict_Entry>(
      _entities[0].properties[1]);

  /// see [Jm_enam_and_dict_Entry.readings]
  static final readings = QueryStringVectorProperty<Jm_enam_and_dict_Entry>(
      _entities[0].properties[2]);

  /// see [Jm_enam_and_dict_Entry.partOfSpeech]
  static final partOfSpeech = QueryStringVectorProperty<Jm_enam_and_dict_Entry>(
      _entities[0].properties[3]);

  /// see [Jm_enam_and_dict_Entry.meanings]
  static final meanings = QueryRelationToMany<Jm_enam_and_dict_Entry,
      Jm_enam_and_dict_LanguageMeanings>(_entities[0].relations[0]);
}

/// [Jm_enam_and_dict_LanguageMeanings] entity fields to define ObjectBox queries.
class Jm_enam_and_dict_LanguageMeanings_ {
  /// see [Jm_enam_and_dict_LanguageMeanings.id]
  static final id = QueryIntegerProperty<Jm_enam_and_dict_LanguageMeanings>(
      _entities[1].properties[0]);

  /// see [Jm_enam_and_dict_LanguageMeanings.language]
  static final language =
      QueryStringProperty<Jm_enam_and_dict_LanguageMeanings>(
          _entities[1].properties[1]);

  /// see [Jm_enam_and_dict_LanguageMeanings.meanings]
  static final meanings =
      QueryStringVectorProperty<Jm_enam_and_dict_LanguageMeanings>(
          _entities[1].properties[2]);
}
