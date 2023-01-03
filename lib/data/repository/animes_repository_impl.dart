import 'package:anime_new/data/datasources/rest_api_client.dart';
import 'package:anime_new/data/entity/entities.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';

class AnimesRepositoryImpl implements AnimesRepository {
  AnimesRepositoryImpl({
    required this.restApiClient,
  });

  final RestApiClient restApiClient;

  @override
  Future<List<Anime>> fetchAnimes() async {
    final AnimeResponseEntity result = await restApiClient.fetchAnimes();
    return result.data;
  }

  @override
  Future<List<AnimeCharacter>> fetchCharacters(int id) async {
    final AnimeCharacterResponseBodyEntity result = await restApiClient.fetchCharacters(id);
    return result.data;
  }
}