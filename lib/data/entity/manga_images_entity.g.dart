// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_images_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MangaImagesEntity _$MangaImagesEntityFromJson(Map<String, dynamic> json) =>
    MangaImagesEntity(
      json['jpg'] == null
          ? null
          : MangaJpg.fromJson(json['jpg'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MangaImagesEntityToJson(MangaImagesEntity instance) =>
    <String, dynamic>{
      'jpg': instance.jpg,
    };
