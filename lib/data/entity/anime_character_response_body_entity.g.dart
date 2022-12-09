// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_character_response_body_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeCharacterResponseBodyEntity _$AnimeCharacterResponseBodyEntityFromJson(
        Map<String, dynamic> json) =>
    AnimeCharacterResponseBodyEntity(
      (json['data'] as List<dynamic>)
          .map((e) => AnimeCharacterEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeCharacterResponseBodyEntityToJson(
        AnimeCharacterResponseBodyEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
