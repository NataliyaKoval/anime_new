import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/top_manga_repository.dart';
import 'package:anime_new/domain/usecase/usecase.dart';

class GetTopMangaUsecase extends UseCase<TopMangaResponseBody, int> {

  GetTopMangaUsecase({
    required this.topMangaRepository,
  });

  final TopMangaRepository topMangaRepository;

  @override
  Future<TopMangaResponseBody> call(int params) {
    return topMangaRepository.fetchTopManga(params);
  }
}