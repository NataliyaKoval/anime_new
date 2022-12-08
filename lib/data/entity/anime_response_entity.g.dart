// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeResponseEntity _$AnimeResponseEntityFromJson(Map<String, dynamic> json) =>
    AnimeResponseEntity(
      (json['data'] as List<dynamic>)
          .map((e) => AnimeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeResponseEntityToJson(
        AnimeResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
