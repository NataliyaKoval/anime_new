import 'package:json_annotation/json_annotation.dart';

part 'character_jpg.g.dart';

@JsonSerializable()
class CharacterJpg {
  final String? image_url;
  final String? small_image_url;

  CharacterJpg(this.image_url, this.small_image_url);

  //flutter pub run build_runner build
  factory CharacterJpg.fromJson(Map<String, dynamic> json) => _$CharacterJpgFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterJpgToJson(this);
}