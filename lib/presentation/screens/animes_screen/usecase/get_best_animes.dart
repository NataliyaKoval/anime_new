import 'package:anime_new/domain/models/anime.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/domain/usecase/usecase.dart';

class GetBestAnimesUsecase extends NoParamsUseCase<List<Anime>> {
  GetBestAnimesUsecase({required this.repository});

  final AnimesRepository repository;

  @override
  Future<List<Anime>> call() async {
    return await repository.fetchAnimes();
  }
}
