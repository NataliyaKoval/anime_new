import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/domain/usecase/usecase.dart';

class ToggleFavoritesUsecase extends UseCase<Anime, Anime> {
  ToggleFavoritesUsecase({
    required this.animesRepository,
  });

  final AnimesRepository animesRepository;

  @override
  Future<Anime> call(Anime params) async {
    if(!params.isFavorite) {
      animesRepository.addToFavorites(params);
      return params.copyWith(isFavorite: true);
    } else {
      animesRepository.removeFromFavorites(params.id);
      return params.copyWith(isFavorite: false);
    }
  }
}
