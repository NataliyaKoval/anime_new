import 'package:anime_new/domain/models/character.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_character.g.dart';

@JsonSerializable()
class AnimeCharacter {

  AnimeCharacter(this.role, this.character);

  //flutter pub run build_runner build
  factory AnimeCharacter.fromJson(Map<String, dynamic> json) => _$AnimeCharacterFromJson(json);

  final String role;
  final Character character;
}