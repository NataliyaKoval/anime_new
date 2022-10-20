import 'package:json_annotation/json_annotation.dart';

part 'anime_jpg.g.dart';

@JsonSerializable()
class AnimeJpg {
  final String image_url;
  final String small_image_url;
  final String large_image_url;

  AnimeJpg(this.image_url, this.small_image_url, this.large_image_url);

  factory AnimeJpg.fromJson(Map<String, dynamic> json) => _$AnimeJpgFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeJpgToJson(this);
}