import 'package:json_annotation/json_annotation.dart';

import 'anime_images.dart';

part 'anime.g.dart';

@JsonSerializable()
class Anime {
  final int mal_id;
  final String url;
  final String title;
  final AnimeImages images;

  Anime(this.mal_id, this.url, this.title, this.images);

  // Anime.fromJson(Map<String, dynamic> parsedJson)
  //     : id = parsedJson['mal_id'],
  //       url = parsedJson['url'],
  //       title = parsedJson['title'],

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeToJson(this);
}


