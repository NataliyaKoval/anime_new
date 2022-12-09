import 'package:anime_new/data/entity/anime_character_entity.dart';
import 'package:anime_new/domain/models/anime_characters_response_body.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_character_response_body_entity.g.dart';

@JsonSerializable()
class AnimeCharacterResponseBodyEntity implements AnimeCharactersResponseBody {
  AnimeCharacterResponseBodyEntity(this.data);

  //flutter pub run build_runner build
  factory AnimeCharacterResponseBodyEntity.fromJson(
          Map<String, dynamic> json) =>
      _$AnimeCharacterResponseBodyEntityFromJson(json);

  @override
  @JsonKey(name: 'data')
  final List<AnimeCharacterEntity> data;
}
