// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_images_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterImagesEntity _$CharacterImagesEntityFromJson(
        Map<String, dynamic> json) =>
    CharacterImagesEntity(
      json['jpg'] == null
          ? null
          : CharacterJpgEntity.fromJson(json['jpg'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterImagesEntityToJson(
        CharacterImagesEntity instance) =>
    <String, dynamic>{
      'jpg': instance.jpg,
    };
