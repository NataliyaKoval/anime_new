// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_characters_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeCharactersResponseBody _$AnimeCharactersResponseBodyFromJson(
        Map<String, dynamic> json) =>
    AnimeCharactersResponseBody(
      (json['data'] as List<dynamic>)
          .map((e) => AnimeCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeCharactersResponseBodyToJson(
        AnimeCharactersResponseBody instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
