// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_character_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeCharacterEntity _$AnimeCharacterEntityFromJson(
        Map<String, dynamic> json) =>
    AnimeCharacterEntity(
      role: json['role'] as String,
      character:
          CharacterEntity.fromJson(json['character'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeCharacterEntityToJson(
        AnimeCharacterEntity instance) =>
    <String, dynamic>{
      'role': instance.role,
      'character': instance.character,
    };
