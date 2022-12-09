import 'package:anime_new/domain/models/anime_character.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_characters_response_body.g.dart';

@JsonSerializable()
class AnimeCharactersResponseBody {
  AnimeCharactersResponseBody(this.data);

  //flutter pub run build_runner build
  factory AnimeCharactersResponseBody.fromJson(Map<String, dynamic> json) =>
      _$AnimeCharactersResponseBodyFromJson(json);

  final List<AnimeCharacter> data;
}
