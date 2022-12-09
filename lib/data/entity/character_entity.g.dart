// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterEntity _$CharacterEntityFromJson(Map<String, dynamic> json) =>
    CharacterEntity(
      id: json['mal_id'] as int,
      name: json['name'] as String,
      images: json['images'] == null
          ? null
          : CharacterImagesEntity.fromJson(
              json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterEntityToJson(CharacterEntity instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'name': instance.name,
      'images': instance.images,
    };
