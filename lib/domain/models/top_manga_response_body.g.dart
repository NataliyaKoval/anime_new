// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_manga_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopMangaResponseBody _$TopMangaResponseBodyFromJson(
        Map<String, dynamic> json) =>
    TopMangaResponseBody(
      data: (json['data'] as List<dynamic>)
          .map((e) => Manga.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          MangaPagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TopMangaResponseBodyToJson(
        TopMangaResponseBody instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.data,
    };
