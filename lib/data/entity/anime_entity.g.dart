// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeEntity _$AnimeEntityFromJson(Map<String, dynamic> json) => AnimeEntity(
      id: json['mal_id'] as int,
      url: json['url'] as String,
      title: json['title'] as String,
      images: json['images'] == null
          ? null
          : AnimeImagesEntity.fromJson(json['images'] as Map<String, dynamic>),
      titleJapanese: json['title_japanese'] as String,
      synopsis: json['synopsis'] as String,
      year: json['year'] as int?,
    );

Map<String, dynamic> _$AnimeEntityToJson(AnimeEntity instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'url': instance.url,
      'title': instance.title,
      'images': instance.images,
      'title_japanese': instance.titleJapanese,
      'synopsis': instance.synopsis,
      'year': instance.year,
    };
