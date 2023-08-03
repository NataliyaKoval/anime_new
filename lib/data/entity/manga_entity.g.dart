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
          : MangaImagesEntity.fromJson(json['images'] as Map<String, dynamic>),
      title: json['title'] as String,
      synopsis: json['synopsis'] as String,
      titleEnglish: json['title_english'] as String?,
      titleJapanese: json['title_japanese'] as String,
      chapters: json['chapters'] as int?,
      published: json['published'] == null
          ? null
          : MangaPublishedEntity.fromJson(
              json['published'] as Map<String, dynamic>),
      score: (json['score'] as num?)?.toDouble(),
      authors: (json['authors'] as List<dynamic>)
          .map((e) => AuthorEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MangaEntityToJson(MangaEntity instance) =>
    <String, dynamic>{
      'mal_id': instance.id,
      'url': instance.url,
      'images': instance.images,
      'title': instance.title,
      'synopsis': instance.synopsis,
      'title_english': instance.titleEnglish,
      'title_japanese': instance.titleJapanese,
      'chapters': instance.chapters,
      'published': instance.published,
      'score': instance.score,
      'authors': instance.authors,
      'genres': instance.genres,
    };
