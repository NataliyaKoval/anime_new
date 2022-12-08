import 'package:anime_new/data/entity/anime_entity.dart';
import 'package:anime_new/domain/models/anime.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:connectivity/connectivity.dart';
import '../datasources/animes_local_data_source.dart';
import '../datasources/animes_remote_data_source.dart';

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
