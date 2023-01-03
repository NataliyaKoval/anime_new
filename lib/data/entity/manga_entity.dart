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
    this.synopsis,
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
  final String? synopsis;
}