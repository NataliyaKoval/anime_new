import 'package:anime_new/domain/models/character_images.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {

  Character(this.id, this.name, this.images);

  //flutter pub run build_runner build
  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);

  final int id;
  final String name;
  final CharacterImages? images;

}