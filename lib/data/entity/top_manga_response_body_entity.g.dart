// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_manga_response_body_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopMangaResponseBodyEntity _$TopMangaResponseBodyEntityFromJson(
        Map<String, dynamic> json) =>
    TopMangaResponseBodyEntity(
      (json['data'] as List<dynamic>)
          .map((e) => MangaEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopMangaResponseBodyEntityToJson(
        TopMangaResponseBodyEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
