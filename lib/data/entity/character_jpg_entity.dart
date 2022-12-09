import 'package:anime_new/domain/models/character_jpg.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_jpg_entity.g.dart';

@JsonSerializable()
class CharacterJpgEntity implements CharacterJpg {
  CharacterJpgEntity(this.imageUrl, this.smallImageUrl);

  //flutter pub run build_runner build
  factory CharacterJpgEntity.fromJson(Map<String, dynamic> json) =>
      _$CharacterJpgEntityFromJson(json);

  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  @JsonKey(name: 'small_image_url')
  final String? smallImageUrl;
}
