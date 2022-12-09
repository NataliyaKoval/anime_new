import 'package:anime_new/data/datasources/characters_remote_data_source.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/characters_repository.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  CharactersRepositoryImpl({
    required this.charactersRemoteDataSource,
  });

  final CharactersRemoteDataSource charactersRemoteDataSource;

  @override
  Future<List<AnimeCharacter>> fetchCharacters(int id) {
    return charactersRemoteDataSource.fetchCharacters(id);
  }
}
