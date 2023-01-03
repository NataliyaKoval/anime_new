import 'package:anime_new/domain/models/manga.dart';
import 'package:anime_new/domain/models/manga_pagination.dart';

class TopMangaResponseBody {
  TopMangaResponseBody({required this.data, required this.pagination});

  final MangaPagination pagination;
  final List<Manga> data;
}
