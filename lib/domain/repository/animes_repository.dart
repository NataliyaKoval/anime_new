import 'package:anime_new/domain/models/models.dart';

abstract class AnimesRepository {
  Future<List<Anime>> fetchAnimes();

  Future<List<AnimeCharacter>> fetchCharacters(int id);
}
