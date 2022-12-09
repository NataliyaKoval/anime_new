// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_jpg_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeJpgEntity _$AnimeJpgEntityFromJson(Map<String, dynamic> json) =>
    AnimeJpgEntity(
      imageUrl: json['image_url'] as String,
      smallImageUrl: json['small_image_url'] as String,
      largeImageUrl: json['large_image_url'] as String,
    );

Map<String, dynamic> _$AnimeJpgEntityToJson(AnimeJpgEntity instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'small_image_url': instance.smallImageUrl,
      'large_image_url': instance.largeImageUrl,
    };
