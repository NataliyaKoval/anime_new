import 'dart:async';

import 'package:anime_new/domain/models/anime_character.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/usecase/get_anime_characters.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'single_anime_screen_event.dart';

part 'single_anime_screen_state.dart';

class SingleAnimeScreenBloc
    extends Bloc<SingleAnimeScreenEvent, SingleAnimeScreenState> {
  SingleAnimeScreenBloc({required this.getAnimeCharactersUsecase})
      : super(SingleAnimeScreenInitial()) {
    on<GetAnimeCharacters>(_getAnimeCharacters);
  }

  final GetAnimeCharactersUsecase getAnimeCharactersUsecase;

  Future<void> _getAnimeCharacters(GetAnimeCharacters event,
      Emitter<SingleAnimeScreenState> emit) async {
    try {
      emit(SingleAnimeScreenCharactersLoading());
      final List<AnimeCharacter> animeCharactersList = await getAnimeCharactersUsecase
          .call(event.id);
      emit(SingleAnimeScreenCharactersLoaded(animeCharactersList));
    } catch(e) {
      emit(SingleAnimeScreenError());
    }
  }
}
