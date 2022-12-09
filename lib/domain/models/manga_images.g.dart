// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MangaImages _$MangaImagesFromJson(Map<String, dynamic> json) => MangaImages(
      json['jpg'] == null
          ? null
          : MangaJpg.fromJson(json['jpg'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MangaImagesToJson(MangaImages instance) =>
    <String, dynamic>{
      'jpg': instance.jpg,
    };
