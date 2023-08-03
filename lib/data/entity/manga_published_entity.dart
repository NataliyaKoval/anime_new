import 'package:anime_new/domain/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manga_published_entity.g.dart';

@JsonSerializable()
class MangaPublishedEntity implements MangaPublished {
  const MangaPublishedEntity({
    this.from,
    this.to,
  });

  //flutter pub run build_runner build
  factory MangaPublishedEntity.fromJson(Map<String, dynamic> json) =>
      _$MangaPublishedEntityFromJson(json);

  @override
  @JsonKey(name: 'from')
  final String? from;

  @override
  @JsonKey(name: 'to')
  final String? to;
}
