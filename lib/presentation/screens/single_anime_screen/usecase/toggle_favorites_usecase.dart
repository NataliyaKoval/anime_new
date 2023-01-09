import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/domain/usecase/usecase.dart';

class ToggleFavoritesUsecase extends UseCase<void, Anime> {
  ToggleFavoritesUsecase({
    required this.animesRepository,
  });

  final AnimesRepository animesRepository;

  @override
  Future<void> call(Anime params) async {
    if(!params.isFavorite) {
      animesRepository.addToFavorites(params);
    } else {
      animesRepository.removeFromFavorites(params);
    }
  }
}
