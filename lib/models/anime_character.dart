import 'package:json_annotation/json_annotation.dart';
import 'character.dart';

part 'anime_character.g.dart';

@JsonSerializable()
class AnimeCharacter {
  final String role;
  final Character character;

  AnimeCharacter(this.role, this.character);

  //flutter pub run build_runner build
  factory AnimeCharacter.fromJson(Map<String, dynamic> json) => _$AnimeCharacterFromJson(json);
  Map<String, dynamic> toJson() => _$AnimeCharacterToJson(this);
}