import 'package:anime_new/data/datasources/top_manga_remote_data_source.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/top_manga_repository.dart';

class TopMangaRepositoryImpl implements TopMangaRepository {

  const TopMangaRepositoryImpl({
    required this.topMangaRemoteDataSource,
  });

  final TopMangaRemoteDataSource topMangaRemoteDataSource;

  @override
  Future<TopMangaResponseBody> fetchTopManga(int page) {
    return topMangaRemoteDataSource.fetchTopManga(page);
  }
}