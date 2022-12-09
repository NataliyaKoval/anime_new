import 'package:anime_new/data/entity/entities.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_character_entity.g.dart';

@JsonSerializable()
class AnimeCharacterEntity implements AnimeCharacter {

  AnimeCharacterEntity({required this.role, required this.character});

  //flutter pub run build_runner build
  factory AnimeCharacterEntity.fromJson(Map<String, dynamic> json) => _$AnimeCharacterEntityFromJson(json);

  @override
  @JsonKey(name: 'role')
  final String role;

  @override
  @JsonKey(name: 'character')
  final CharacterEntity character;
}