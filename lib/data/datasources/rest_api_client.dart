import 'package:anime_new/data/entity/entities.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

// flutter pub run build_runner build
part 'rest_api_client.g.dart';

@RestApi(baseUrl: 'https://api.jikan.moe/v4/')
abstract class RestApiClient {
  factory RestApiClient(Dio dio, {String baseUrl}) = _RestApiClient;

  static const int _limit = 10;

  @GET('/top/anime')
  Future<AnimeResponseEntity> fetchAnimes();

  @GET('/anime/{id}/characters')
  Future<AnimeCharacterResponseBodyEntity> fetchCharacters(@Path('id') int id);

  @GET('/top/manga?limit=$_limit')
  Future<TopMangaResponseBodyEntity> fetchMangas(
      @Query('page') int page);
}
