import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/characters_repository.dart';
import 'package:anime_new/domain/usecase/usecase.dart';

class GetAnimeCharactersUsecase extends UseCase<List<AnimeCharacter>, int> {

  GetAnimeCharactersUsecase({required this.charactersRepository});

  final CharactersRepository charactersRepository;

  @override
  Future<List<AnimeCharacter>> call(int params) async {
    return await charactersRepository.fetchCharacters(params);
  }
}