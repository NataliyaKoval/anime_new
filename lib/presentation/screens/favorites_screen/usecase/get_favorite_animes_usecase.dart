import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/domain/usecase/usecase.dart';

class GetFavoriteAnimesUsecase extends NoParamsUseCase<List<Anime>?> {
  GetFavoriteAnimesUsecase({required this.repository});

  final AnimesRepository repository;

  @override
  Future<List<Anime>> call() async {
    return repository.getFavoriteAnimes();
  }
}