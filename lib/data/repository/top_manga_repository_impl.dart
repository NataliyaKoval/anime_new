import 'package:anime_new/data/datasources/rest_api_client.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/top_manga_repository.dart';

class TopMangaRepositoryImpl implements TopMangaRepository {
  const TopMangaRepositoryImpl({
    required this.restApiClient,
  });

  final RestApiClient restApiClient;

  @override
  Future<TopMangaResponseBody> fetchTopManga(int page) {
    return restApiClient.fetchMangas(page);
  }
}