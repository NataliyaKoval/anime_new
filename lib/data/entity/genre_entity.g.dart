// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreEntity _$GenreEntityFromJson(Map<String, dynamic> json) => GenreEntity(
      malId: json['mal_id'] as int,
      type: json['type'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GenreEntityToJson(GenreEntity instance) =>
    <String, dynamic>{
      'mal_id': instance.malId,
      'type': instance.type,
      'name': instance.name,
    };
