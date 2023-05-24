import 'package:anime_new/domain/models/models.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'anime_jpg_entity.dart';

part 'anime_images_entity.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class AnimeImagesEntity implements AnimeImages {

  AnimeImagesEntity ({required this.jpg});

  factory AnimeImagesEntity.fromJson(Map<String, dynamic> json) => _$AnimeImagesEntityFromJson(json);

  @HiveField(0)
  @override
  @JsonKey(name: 'jpg')
  final AnimeJpgEntity jpg;
}