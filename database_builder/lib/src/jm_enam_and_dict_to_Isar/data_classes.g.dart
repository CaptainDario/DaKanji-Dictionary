// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_classes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JMDictAttribute _$JMDictAttributeFromJson(Map<String, dynamic> json) =>
    JMDictAttribute(
      attributes: (json['attributes'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$JMDictAttributeToJson(JMDictAttribute instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
    };

LanguageMeanings _$LanguageMeaningsFromJson(Map<String, dynamic> json) =>
    LanguageMeanings(
      language: json['language'] as String?,
      meanings: (json['meanings'] as List<dynamic>?)
              ?.map((e) => JMDictAttribute.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      senseKanjiTarget: (json['senseKanjiTarget'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : JMDictAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      senseReadingTarget: (json['senseReadingTarget'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : JMDictAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      xref: (json['xref'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : JMDictAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      antonyms: (json['antonyms'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : JMDictAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      partOfSpeech: (json['partOfSpeech'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : JMDictAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      field: (json['field'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : JMDictAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : JMDictAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      dialect: (json['dialect'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : JMDictAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      senseInfo: (json['senseInfo'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : JMDictAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LanguageMeaningsToJson(LanguageMeanings instance) =>
    <String, dynamic>{
      'language': instance.language,
      'meanings': instance.meanings,
      'senseKanjiTarget': instance.senseKanjiTarget,
      'senseReadingTarget': instance.senseReadingTarget,
      'xref': instance.xref,
      'antonyms': instance.antonyms,
      'partOfSpeech': instance.partOfSpeech,
      'field': instance.field,
      'source': instance.source,
      'dialect': instance.dialect,
      'senseInfo': instance.senseInfo,
    };
