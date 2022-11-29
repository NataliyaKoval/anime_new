import 'package:json_annotation/json_annotation.dart';
import 'character_jpg.dart';

part 'character_images.g.dart';

@JsonSerializable()
class CharacterImages {
  final CharacterJpg? jpg;

  CharacterImages(this.jpg);

  //flutter pub run build_runner build
  factory CharacterImages.fromJson(Map<String, dynamic> json) => _$CharacterImagesFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterImagesToJson(this);
}