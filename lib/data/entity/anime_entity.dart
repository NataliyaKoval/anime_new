import 'package:anime_new/data/entity/anime_images_entity.dart';
import 'package:anime_new/domain/models/anime.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

// flutter packages pub run build_runner build
part 'anime_entity.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class AnimeEntity implements Anime {
  const AnimeEntity(
      {required this.id,
      required this.url,
      required this.title,
      this.images,
      required this.titleJapanese,
      required this.synopsis,
      this.year,
      this.isFavorite = false});

  //flutter pub run build_runner build
  factory AnimeEntity.fromJson(Map<String, dynamic> json) =>
      _$AnimeEntityFromJson(json);

  factory AnimeEntity.fromAnime(Anime anime) => AnimeEntity(
        id: anime.id,
        url: anime.url,
        title: anime.title,
        titleJapanese: anime.titleJapanese,
        synopsis: anime.synopsis,
      );

  @HiveField(0)
  @override
  @JsonKey(name: 'mal_id')
  final int id;

  @HiveField(1)
  @override
  @JsonKey(name: 'url')
  final String url;

  @HiveField(2)
  @override
  @JsonKey(name: 'title')
  final String title;

  @HiveField(3)
  @override
  @JsonKey(name: 'images')
  final AnimeImagesEntity? images;

  @HiveField(4)
  @override
  @JsonKey(name: 'title_japanese')
  final String titleJapanese;

  @HiveField(5)
  @override
  @JsonKey(name: 'synopsis')
  final String synopsis;

  @HiveField(6)
  @override
  @JsonKey(name: 'year')
  final int? year;

  @JsonKey(ignore: true)
  final bool isFavorite;

  AnimeEntity copyWith({
    int? id,
    String? url,
    String? title,
    AnimeImagesEntity? images,
    String? titleJapanese,
    String? synopsis,
    int? year,
    bool? isFavorite,
  }) {
    return AnimeEntity(
      id: id ?? this.id,
      url: url ?? this.url,
      title: title ?? this.title,
      images: images ?? this.images,
      titleJapanese: titleJapanese ?? this.titleJapanese,
      synopsis: synopsis ?? this.synopsis,
      year: year ?? this.year,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
