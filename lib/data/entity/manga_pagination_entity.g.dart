// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_pagination_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MangaPaginationEntity _$MangaPaginationEntityFromJson(
        Map<String, dynamic> json) =>
    MangaPaginationEntity(
      hasNextPage: json['has_next_page'] as bool,
      currentPage: json['current_page'] as int,
    );

Map<String, dynamic> _$MangaPaginationEntityToJson(
        MangaPaginationEntity instance) =>
    <String, dynamic>{
      'has_next_page': instance.hasNextPage,
      'current_page': instance.currentPage,
    };
