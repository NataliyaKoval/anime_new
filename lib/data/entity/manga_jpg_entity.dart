import 'package:anime_new/domain/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manga_jpg_entity.g.dart';

@JsonSerializable()
class MangaJpgEntity implements MangaJpg {

  MangaJpgEntity(this.imageUrl, this.smallImageUrl);

  //flutter pub run build_runner build
  factory MangaJpgEntity.fromJson(Map<String, dynamic> json) => _$MangaJpgEntityFromJson(json);

  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  @JsonKey(name: 'small_image_url')
  final String? smallImageUrl;
}