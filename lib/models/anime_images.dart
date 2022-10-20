import 'package:json_annotation/json_annotation.dart';

import 'anime_jpg.dart';

part 'anime_images.g.dart';

@JsonSerializable()
class AnimeImages {
  final AnimeJpg jpg;

  AnimeImages(this.jpg);

  factory AnimeImages.fromJson(Map<String, dynamic> json) => _$AnimeImagesFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeImagesToJson(this);
}