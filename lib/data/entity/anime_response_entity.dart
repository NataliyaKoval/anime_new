import 'package:anime_new/data/entity/anime_entity.dart';
import 'package:anime_new/domain/models/animes_response_body.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_response_entity.g.dart';

@JsonSerializable()
class AnimeResponseEntity implements AnimesResponseBody {

  AnimeResponseEntity(this.data);

  //flutter pub run build_runner build
  factory AnimeResponseEntity.fromJson(Map<String, dynamic> json) => _$AnimeResponseEntityFromJson(json);

  @override
  @JsonKey(name: 'data')
  final List<AnimeEntity> data;
}