import 'package:anime_new/domain/models/manga_images.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manga.g.dart';

@JsonSerializable()
class Manga {

  const Manga({
    required this.id,
    required this.url,
    this.images,
    required this.title,
    this.synopsis,
  });

  //flutter pub run build_runner build
  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);

  final int id;
  final String url;
  final MangaImages? images;
  final String title;
  final String? synopsis;
}