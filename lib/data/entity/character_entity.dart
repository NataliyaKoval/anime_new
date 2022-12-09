import 'package:anime_new/data/entity/entities.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character_entity.g.dart';

@JsonSerializable()
class CharacterEntity implements Character {
  CharacterEntity({required this.id, required this.name, required this.images});

  //flutter pub run build_runner build
  factory CharacterEntity.fromJson(Map<String, dynamic> json) =>
      _$CharacterEntityFromJson(json);

  @override
  @JsonKey(name: 'mal_id')
  final int id;

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  @JsonKey(name: 'images')
  final CharacterImagesEntity? images;
}
