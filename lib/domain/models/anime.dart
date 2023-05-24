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
    this.isFavorite = false,
  });

  final int id;
  final String url;
  final String title;
  final AnimeImages? images;
  final String titleJapanese;
  final String synopsis;
  final int? year;
  final bool isFavorite;

  Anime copyWith({
    int? id,
    String? url,
    String? title,
    AnimeImages? images,
    String? titleJapanese,
    String? synopsis,
    int? year,
    bool? isFavorite,
  }) {
    return Anime(
      id: id ?? this.id,
      url: url ?? this.url,
      title: title ?? this.title,
      images: images ?? this.images,
      titleJapanese: titleJapanese ?? this.titleJapanese,
      synopsis: synopsis ?? this.synopsis,
      year: year ?? this.year,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
