import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/top_manga_repository.dart';
import 'package:anime_new/domain/usecase/usecase.dart';

class GetTopMangaUsecase extends NoParamsUseCase<List<Manga>> {

  GetTopMangaUsecase({
    required this.topMangaRepository,
  });

  final TopMangaRepository topMangaRepository;

  @override
  Future<List<Manga>> call() async {
    return await topMangaRepository.fetchTopManga();
  }
}