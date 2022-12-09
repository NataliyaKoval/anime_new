import 'package:anime_new/domain/models/character_jpg.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_images.g.dart';

@JsonSerializable()
class CharacterImages {

  CharacterImages(this.jpg);

  //flutter pub run build_runner build
  factory CharacterImages.fromJson(Map<String, dynamic> json) => _$CharacterImagesFromJson(json);

  final CharacterJpg? jpg;
}