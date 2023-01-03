import 'package:anime_new/domain/models/manga_images.dart';

class Manga {

  const Manga({
    required this.id,
    required this.url,
    this.images,
    required this.title,
    this.synopsis,
  });

  final int id;
  final String url;
  final MangaImages? images;
  final String title;
  final String? synopsis;
}