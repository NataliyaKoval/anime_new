import 'package:anime_new/domain/models/models.dart';

abstract class TopMangaRepository {
  Future<TopMangaResponseBody> fetchTopManga(int page);
}