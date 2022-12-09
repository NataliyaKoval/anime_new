import 'package:json_annotation/json_annotation.dart';

part 'character_jpg.g.dart';

@JsonSerializable()
class CharacterJpg {

  CharacterJpg(this.imageUrl, this.smallImageUrl);

  //flutter pub run build_runner build
  factory CharacterJpg.fromJson(Map<String, dynamic> json) => _$CharacterJpgFromJson(json);

  final String? imageUrl;
  final String? smallImageUrl;
}