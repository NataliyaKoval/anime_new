import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/favorites_screen/usecase/delete_from_favorites_usecase.dart';
import 'package:anime_new/presentation/screens/favorites_screen/usecase/get_favorite_animes_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'favorites_screen_state.dart';

class FavoritesScreenCubit extends Cubit<FavoritesScreenState> {
  FavoritesScreenCubit({
    required this.getFavoriteAnimesUsecase,
    required this.deleteFomFavoritesUseCase,
  }) : super(FavoritesScreenInitial());

  final GetFavoriteAnimesUsecase getFavoriteAnimesUsecase;
  final DeleteFomFavoritesUseCase deleteFomFavoritesUseCase;

  List<Anime> favoriteAnimes = [];

  Future<void> getFavoriteAnimes() async {
    try {
      favoriteAnimes = await getFavoriteAnimesUsecase.call();
      if (favoriteAnimes.isNotEmpty) {
        emit(FavoritesScreenLoaded(favoriteAnimes: favoriteAnimes));
      } else {
        emit(FavoritesScreenEmpty());
      }
    } catch (e) {
      emit(FavoritesScreenError(e.toString()));
    }
  }

  Future<void> deleteAnimeFromFavorites(int id) async {
    try {
      deleteFomFavoritesUseCase.call(id);
      favoriteAnimes.removeWhere((Anime element) => element.id == id);
      emit(FavoritesScreenLoaded(favoriteAnimes: favoriteAnimes));
    } catch (e) {
      emit(FavoritesScreenError(e.toString()));
    }
  }
}
