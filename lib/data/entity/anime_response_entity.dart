import 'package:anime_new/data/entity/anime_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_response_entity.g.dart';

@JsonSerializable()
class AnimeResponseEntity {

  AnimeResponseEntity(this.data);

  //flutter pub run build_runner build
  factory AnimeResponseEntity.fromJson(Map<String, dynamic> json) => _$AnimeResponseEntityFromJson(json);

  @JsonKey(name: 'data')
  final List<AnimeEntity> data;
}