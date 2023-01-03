import 'package:anime_new/data/entity/anime_character_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_character_response_body_entity.g.dart';

@JsonSerializable()
class AnimeCharacterResponseBodyEntity {
  AnimeCharacterResponseBodyEntity(this.data);

  //flutter pub run build_runner build
  factory AnimeCharacterResponseBodyEntity.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeCharacterResponseBodyEntityFromJson(json);

  @JsonKey(name: 'data')
  final List<AnimeCharacterEntity> data;
}
