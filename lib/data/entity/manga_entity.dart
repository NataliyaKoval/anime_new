import 'package:anime_new/data/entity/entities.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manga_entity.g.dart';

@JsonSerializable()
class MangaEntity implements Manga {
  const MangaEntity({
    required this.id,
    required this.url,
    this.images,
    required this.title,
    required this.synopsis,
    this.titleEnglish,
    required this.titleJapanese,
    this.chapters,
    this.published,
    this.score,
    required this.authors,
    required this.genres,
  });

  //flutter pub run build_runner build
  factory MangaEntity.fromJson(Map<String, dynamic> json) =>
      _$MangaEntityFromJson(json);

  @override
  @JsonKey(name: 'mal_id')
  final int id;

  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  @JsonKey(name: 'images')
  final MangaImagesEntity? images;

  @override
  @JsonKey(name: 'title')
  final String title;

  @override
  @JsonKey(name: 'synopsis')
  final String synopsis;

  @override
  @JsonKey(name: 'title_english')
  final String? titleEnglish;

  @override
  @JsonKey(name: 'title_japanese')
  final String titleJapanese;

  @override
  @JsonKey(name: 'chapters')
  final int? chapters;

  @override
  @JsonKey(name: 'published')
  final MangaPublishedEntity? published;

  @override
  @JsonKey(name: 'score')
  final double? score;

  @override
  @JsonKey(name: 'authors')
  final List<AuthorEntity> authors;

  @override
  @JsonKey(name: 'genres')
  final List<GenreEntity> genres;
}
