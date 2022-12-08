import 'package:anime_new/data/entity/anime_images_entity.dart';
import 'package:anime_new/domain/models/anime.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_entity.g.dart';

@JsonSerializable()
class AnimeEntity implements Anime {

  const AnimeEntity({
    required this.id,
    required this.url,
    required this.title,
    this.images,
    required this.titleJapanese,
    required this.synopsis,
    this.year,
});

  //flutter pub run build_runner build
  factory AnimeEntity.fromJson(Map<String, dynamic> json) => _$AnimeEntityFromJson(json);
  //Map<String, dynamic> toJson() => _$AnimeEntityToJson(this);

  @override
  @JsonKey(name: 'mal_id')
  final int id;

  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  @JsonKey(name: 'title')
  final String title;

  @override
  @JsonKey(name: 'images')
  final AnimeImagesEntity? images;

  @override
  @JsonKey(name: 'title_japanese')
  final String titleJapanese;

  @override
  @JsonKey(name: 'synopsis')
  final String synopsis;

  @override
  @JsonKey(name: 'year')
  final int? year;
}
