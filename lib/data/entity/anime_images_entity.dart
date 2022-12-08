import 'package:anime_new/domain/models/anime_images.dart';
import 'package:json_annotation/json_annotation.dart';

import 'anime_jpg_entity.dart';

part 'anime_images_entity.g.dart';

@JsonSerializable()
class AnimeImagesEntity implements AnimeImages {

  AnimeImagesEntity ({required this.jpg});

  factory AnimeImagesEntity.fromJson(Map<String, dynamic> json) => _$AnimeImagesEntityFromJson(json);

  @override
  @JsonKey(name: 'jpg')
  final AnimeJpgEntity jpg;
}