import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/top_manga_screen/usecase/get_top_manga.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'top_manga_screen_state.dart';

class TopMangaScreenCubit extends Cubit<TopMangaScreenState> {
  TopMangaScreenCubit({required this.getTopMangaUsecase}) : super(TopMangaScreenInitial());

  final GetTopMangaUsecase getTopMangaUsecase;

  Future<void> _getTopManga() async {
    try {
      emit(TopMangaScreenLoading());
      final List<Manga> topMangaList = await getTopMangaUsecase.call();
      emit(TopMangaScreenLoaded(topMangaList));
    } catch (e) {
      emit(TopMangaScreenError());
      print('error: $e');
    }
  }

  void onTopMangaScreenInit() {
    _getTopManga();
  }
}
