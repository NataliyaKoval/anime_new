// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_manga_response_body_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopMangaResponseBodyEntity _$TopMangaResponseBodyEntityFromJson(
        Map<String, dynamic> json) =>
    TopMangaResponseBodyEntity(
      data: (json['data'] as List<dynamic>)
          .map((e) => MangaEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: MangaPaginationEntity.fromJson(
          json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TopMangaResponseBodyEntityToJson(
        TopMangaResponseBodyEntity instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
