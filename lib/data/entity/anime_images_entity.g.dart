// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_images_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeImagesEntity _$AnimeImagesEntityFromJson(Map<String, dynamic> json) =>
    AnimeImagesEntity(
      jpg: AnimeJpgEntity.fromJson(json['jpg'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeImagesEntityToJson(AnimeImagesEntity instance) =>
    <String, dynamic>{
      'jpg': instance.jpg,
    };
