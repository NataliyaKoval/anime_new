import 'package:anime_new/domain/models/models.dart';

abstract class AnimesRepository {
  Future<List<Anime>> fetchAnimes();

  Future<List<AnimeCharacter>> fetchCharacters(int id);

  void addToFavorites(Anime anime);

  void removeFromFavorites(int id);

  List<Anime> getFavoriteAnimes();

  List? getFavoriteAnimesKeys();
}
