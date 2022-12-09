// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterImages _$CharacterImagesFromJson(Map<String, dynamic> json) =>
    CharacterImages(
      json['jpg'] == null
          ? null
          : CharacterJpg.fromJson(json['jpg'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterImagesToJson(CharacterImages instance) =>
    <String, dynamic>{
      'jpg': instance.jpg,
    };
