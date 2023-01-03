import 'package:anime_new/data/entity/entities.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/models/models.dart';

part 'manga_images_entity.g.dart';

@JsonSerializable()
class MangaImagesEntity implements MangaImages {
  MangaImagesEntity({this.jpg});

  //flutter pub run build_runner build
  factory MangaImagesEntity.fromJson(Map<String, dynamic> json) =>
      _$MangaImagesEntityFromJson(json);

  @override
  @JsonKey(name: 'jpg')
  final MangaJpgEntity? jpg;
}
