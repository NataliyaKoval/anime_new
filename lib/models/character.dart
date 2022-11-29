import 'package:json_annotation/json_annotation.dart';
import 'character_images.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  final int mal_id;
  final String name;
  final CharacterImages? images;

  Character(this.mal_id, this.name, this.images);

  //flutter pub run build_runner build
  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}