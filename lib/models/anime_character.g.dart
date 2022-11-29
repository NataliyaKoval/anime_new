// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeCharacter _$AnimeCharacterFromJson(Map<String, dynamic> json) =>
    AnimeCharacter(
      json['role'] as String,
      Character.fromJson(json['character'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeCharacterToJson(AnimeCharacter instance) =>
    <String, dynamic>{
      'role': instance.role,
      'character': instance.character,
    };
