// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Manga _$MangaFromJson(Map<String, dynamic> json) => Manga(
      id: json['id'] as int,
      url: json['url'] as String,
      images: json['images'] == null
          ? null
          : MangaImages.fromJson(json['images'] as Map<String, dynamic>),
      title: json['title'] as String,
      synopsis: json['synopsis'] as String,
    );

Map<String, dynamic> _$MangaToJson(Manga instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'images': instance.images,
      'title': instance.title,
      'synopsis': instance.synopsis,
    };
