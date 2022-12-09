import 'package:anime_new/domain/models/anime_jpg.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_jpg_entity.g.dart';

@JsonSerializable()
class AnimeJpgEntity implements AnimeJpg {
  AnimeJpgEntity({
    required this.imageUrl,
    required this.smallImageUrl,
    required this.largeImageUrl,
  });

  factory AnimeJpgEntity.fromJson(Map<String, dynamic> json) =>
      _$AnimeJpgEntityFromJson(json);

  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @override
  @JsonKey(name: 'small_image_url')
  final String smallImageUrl;

  @override
  @JsonKey(name: 'large_image_url')
  final String largeImageUrl;
}
