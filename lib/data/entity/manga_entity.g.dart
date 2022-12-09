// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MangaEntity _$MangaEntityFromJson(Map<String, dynamic> json) => MangaEntity(
      id: json['mal_id'] as int,
      url: json['url'] as String,
      images: json['images'] == null
          ? null
          : MangaImages.fromJson(json['images'] as Map<String, dynamic>),
      title: json['title'] as String,
      synopsis: json['synopsis'] as String,
    );

Map<String, dynamic> _$MangaEntityToJson(MangaEntity instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'url': instance.url,
      'images': instance.images,
      'title': instance.title,
      'synopsis': instance.synopsis,
    };
