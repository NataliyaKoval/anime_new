// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorEntity _$AuthorEntityFromJson(Map<String, dynamic> json) => AuthorEntity(
      malId: json['mal_id'] as int,
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$AuthorEntityToJson(AuthorEntity instance) =>
    <String, dynamic>{
      'mal_id': instance.malId,
      'name': instance.name,
      'url': instance.url,
    };
