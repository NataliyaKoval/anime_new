import 'package:anime_new/domain/models/manga_pagination.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/top_manga_screen/usecase/get_top_manga.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'top_manga_screen_state.dart';

class TopMangaScreenCubit extends Cubit<TopMangaScreenState> {
  TopMangaScreenCubit({required this.getTopMangaUsecase})
      : super(TopMangaScreenInitial());

  final GetTopMangaUsecase getTopMangaUsecase;
  int page = 1;
  //int page = 4228;
  bool isLastPage = false;
  List<Manga> allTopMangaList = <Manga>[];
  bool isTopMangaFutureRunning = false;

  Future<void> getTopManga() async {
    if (isTopMangaFutureRunning) {
      return;
    }

    isTopMangaFutureRunning = true;

    try {
      final TopMangaResponseBody response = await getTopMangaUsecase.call(page);
      final List<Manga> topMangaList = response.data;
      final MangaPagination pagination = response.pagination;
      if (pagination.hasNextPage == false) {
        isLastPage = true;
      }
      // if(pagination.currentPage == 3) {
      //   throw Exception('You shall not pass!');
      // }
      allTopMangaList.addAll(topMangaList);
      page++;
      emit(
        TopMangaScreenLoaded(
          topMangaList: allTopMangaList,
          isLastPage: isLastPage,
        ),
      );
    } catch (e) {
      emit(TopMangaScreenError(e.toString()));
    } finally {
      isTopMangaFutureRunning = false;
    }
  }
}
