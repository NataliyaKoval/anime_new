import 'package:anime_new/domain/models/models.dart';

class Manga {
  const Manga({
    required this.id,
    required this.url,
    this.images,
    required this.title,
    required this.synopsis,
    this.titleEnglish,
    required this.titleJapanese,
    this.chapters,
    this.published,
    this.score,
    required this.authors,
    required this.genres,
  });

  final int id;
  final String url;
  final MangaImages? images;
  final String title;
  final String synopsis;
  final String? titleEnglish;
  final String titleJapanese;
  final int? chapters;
  final MangaPublished? published;
  final double? score;
  final List<Author> authors;
  final List<Genre> genres;
}
