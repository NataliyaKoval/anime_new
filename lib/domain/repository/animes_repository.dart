import 'package:anime_new/domain/models/anime.dart';

abstract class AnimesRepository {
  Future<List<Anime>> fetchAnimes();
}
