import 'package:anime_new/domain/models/manga_jpg.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manga_images.g.dart';

@JsonSerializable()
class MangaImages {

  MangaImages(this.jpg);

  //flutter pub run build_runner build
  factory MangaImages.fromJson(Map<String, dynamic> json) => _$MangaImagesFromJson(json);

  final MangaJpg? jpg;
}