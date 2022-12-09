// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      json['id'] as int,
      json['name'] as String,
      json['images'] == null
          ? null
          : CharacterImages.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
    };
