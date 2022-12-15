// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MangaPagination _$MangaPaginationFromJson(Map<String, dynamic> json) =>
    MangaPagination(
      hasNextPage: json['hasNextPage'] as bool,
      currentPage: json['currentPage'] as int,
    );

Map<String, dynamic> _$MangaPaginationToJson(MangaPagination instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'currentPage': instance.currentPage,
    };
