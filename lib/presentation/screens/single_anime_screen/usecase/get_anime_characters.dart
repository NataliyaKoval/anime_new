import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/domain/usecase/usecase.dart';

class GetAnimeCharactersUsecase extends UseCase<List<AnimeCharacter>, int> {
  GetAnimeCharactersUsecase({
    required this.animesRepository,
  });

  final AnimesRepository animesRepository;

  @override
  Future<List<AnimeCharacter>> call(int params) {
    return animesRepository.fetchCharacters(params);
  }
}
