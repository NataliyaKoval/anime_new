import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/favorites_screen/usecase/get_favorite_animes_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'favorites_screen_state.dart';

class FavoritesScreenCubit extends Cubit<FavoritesScreenState> {
  FavoritesScreenCubit({required this.getFavoriteAnimesUsecase})
      : super(FavoritesScreenInitial());

  final GetFavoriteAnimesUsecase getFavoriteAnimesUsecase;

  Future<void> getFavoriteAnimes() async {
    try {
      final List<Anime>? favoriteAnimes = await getFavoriteAnimesUsecase.call();
      emit(FavoritesScreenLoaded(favoriteAnimes: favoriteAnimes));
    } catch(e) {
      emit(FavoritesScreenError(e.toString()));
    }
  }
}
