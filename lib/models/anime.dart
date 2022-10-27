import 'package:json_annotation/json_annotation.dart';

import 'anime_images.dart';

part 'anime.g.dart';

@JsonSerializable()
class Anime {
  final int mal_id;
  final String url;
  final String title;
  final AnimeImages images;
  final String title_japanese;
  final String synopsis;
  final int? year;

  Anime(
    this.mal_id,
    this.url,
    this.title,
    this.images,
    this.title_japanese,
    this.synopsis,
    this.year,
  );

  // Anime.fromJson(Map<String, dynamic> parsedJson)
  //     : id = parsedJson['mal_id'],
  //       url = parsedJson['url'],
  //       title = parsedJson['title'],

  //flutter pub run build_runner build
  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeToJson(this);
}
