import 'package:anime_new/domain/models/models.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_jpg_entity.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class AnimeJpgEntity implements AnimeJpg {
  AnimeJpgEntity({
    required this.imageUrl,
    required this.smallImageUrl,
    required this.largeImageUrl,
  });

  factory AnimeJpgEntity.fromJson(Map<String, dynamic> json) =>
      _$AnimeJpgEntityFromJson(json);

  @HiveField(0)
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @HiveField(1)
  @override
  @JsonKey(name: 'small_image_url')
  final String smallImageUrl;

  @HiveField(2)
  @override
  @JsonKey(name: 'large_image_url')
  final String largeImageUrl;
}
