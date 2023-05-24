import 'dart:async';

import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/usecase/get_anime_characters.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/usecase/toggle_favorites_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'single_anime_screen_event.dart';
part 'single_anime_screen_state.dart';

class SingleAnimeScreenBloc
    extends Bloc<SingleAnimeScreenEvent, SingleAnimeScreenState> {
  SingleAnimeScreenBloc({
    required this.getAnimeCharactersUsecase,
    required this.toggleFavoritesUsecase,
    required this.anime,
  }) : super(SingleAnimeScreenInitial()) {
    on<GetAnimeCharacters>(_getAnimeCharacters);
    on<ToggleFavoritesEvent>(_toggleFavorites);
  }

  late Anime anime;
  final GetAnimeCharactersUsecase getAnimeCharactersUsecase;
  final ToggleFavoritesUsecase toggleFavoritesUsecase;

  Future<void> _getAnimeCharacters(
      GetAnimeCharacters event, Emitter<SingleAnimeScreenState> emit) async {
    try {
      emit(SingleAnimeScreenCharactersLoading());
      final List<AnimeCharacter> animeCharactersList =
          await getAnimeCharactersUsecase.call(event.id);
      emit(SingleAnimeScreenCharactersLoaded(animeCharactersList));
    } catch (e) {
      emit(SingleAnimeScreenError());
    }
  }

  Future<void> _toggleFavorites(
      ToggleFavoritesEvent event, Emitter<SingleAnimeScreenState> emit) async {
    try {
      anime = await toggleFavoritesUsecase.call(anime);
      emit(SingleAnimeScreenChanged(anime));
    } catch (e) {
      emit(SingleAnimeScreenError());
    }
  }
}
