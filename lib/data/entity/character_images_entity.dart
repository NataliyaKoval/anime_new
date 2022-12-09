import 'package:anime_new/data/entity/entities.dart';
import 'package:anime_new/domain/models/character_images.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_images_entity.g.dart';

@JsonSerializable()
class CharacterImagesEntity implements CharacterImages {
  CharacterImagesEntity(this.jpg);

  //flutter pub run build_runner build
  factory CharacterImagesEntity.fromJson(Map<String, dynamic> json) =>
      _$CharacterImagesEntityFromJson(json);

  @override
  @JsonKey(name: 'jpg')
  final CharacterJpgEntity? jpg;
}
