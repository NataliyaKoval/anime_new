import 'package:anime_new/data/entity/manga_entity.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'top_manga_response_body_entity.g.dart';

@JsonSerializable()
class TopMangaResponseBodyEntity implements TopMangaResponseBody {
  TopMangaResponseBodyEntity(this.data);

  //flutter pub run build_runner build
  factory TopMangaResponseBodyEntity.fromJson(Map<String, dynamic> json) => _$TopMangaResponseBodyEntityFromJson(json);

  @override
  @JsonKey(name: 'data')
  final List<MangaEntity> data;
}