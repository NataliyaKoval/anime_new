// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Anime _$AnimeFromJson(Map<String, dynamic> json) => Anime(
      json['mal_id'] as int,
      json['url'] as String,
      json['title'] as String,
      AnimeImages.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeToJson(Anime instance) => <String, dynamic>{
      'mal_id': instance.mal_id,
      'url': instance.url,
      'title': instance.title,
      'images': instance.images,
    };
