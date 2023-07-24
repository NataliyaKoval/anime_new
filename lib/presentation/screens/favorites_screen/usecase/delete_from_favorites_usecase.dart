import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/domain/usecase/usecase.dart';

class DeleteFomFavoritesUseCase extends UseCase<void, int> {
  DeleteFomFavoritesUseCase({required this.animesRepository});

  final AnimesRepository animesRepository;

  @override
  Future<void> call(int params) async {
    animesRepository.removeFromFavorites(params);
  }
}
