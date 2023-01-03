import 'package:anime_new/domain/models/anime_images.dart';

class Anime {
  const Anime({
    required this.id,
    required this.url,
    required this.title,
    this.images,
    required this.titleJapanese,
    required this.synopsis,
    this.year,
  });

  final int id;
  final String url;
  final String title;
  final AnimeImages? images;
  final String titleJapanese;
  final String synopsis;
  final int? year;
}
