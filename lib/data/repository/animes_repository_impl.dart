import 'package:anime_new/data/datasources/local_database.dart';
import 'package:anime_new/data/datasources/rest_api_client.dart';
import 'package:anime_new/data/entity/entities.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';

class AnimesRepositoryImpl implements AnimesRepository {
  AnimesRepositoryImpl({
    required this.restApiClient,
    required this.localDatabase,
  });

  final RestApiClient restApiClient;
  final LocalDatabase localDatabase;

  @override
  Future<List<Anime>> fetchAnimes() async {
    final AnimeResponseEntity result = await restApiClient.fetchAnimes();
    final List<dynamic> keys = localDatabase.getFavoriteAnimesKeys();

    return result.data.map((AnimeEntity e) {
      if (keys.contains(e.id)) {
        return e.copyWith(isFavorite: true);
      } else {
        return e;
      }
    }).toList();
  }

  @override
  Future<List<AnimeCharacter>> fetchCharacters(int id) async {
    final AnimeCharacterResponseBodyEntity result =
        await restApiClient.fetchCharacters(id);
    return result.data;
  }

  //todo: future
  @override
  void addToFavorites(Anime anime) {
    localDatabase.addToFavorites(AnimeEntity.fromAnime(anime));
  }

  @override
  List<Anime> getFavoriteAnimes() {
    return localDatabase.getFavoriteAnimes();
  }

  @override
  void removeFromFavorites(int id) {
    localDatabase.removeFromFavorites(id);
  }

  @override
  List? getFavoriteAnimesKeys() {
    return localDatabase.getFavoriteAnimesKeys();
  }
}
