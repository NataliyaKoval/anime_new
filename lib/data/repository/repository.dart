import 'package:anime_new/data/datasources/animes_remote_data_source.dart';
import 'package:anime_new/domain/models/anime.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';

class AnimesRepositoryImpl implements AnimesRepository {
  AnimesRepositoryImpl({
    required this.remoteDataSource,
  });

  final AnimesRemoteDataSource remoteDataSource;

  @override
  Future<List<Anime>> fetchAnimes() {
    return remoteDataSource.fetchAnimes();
  }

}
