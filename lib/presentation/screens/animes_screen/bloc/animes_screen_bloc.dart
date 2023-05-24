import 'dart:async';

import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/animes_screen/usecase/get_best_animes.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'animes_screen_event.dart';

part 'animes_screen_state.dart';

class AnimesScreenBloc extends Bloc<AnimesScreenEvent, AnimesScreenState> {
  AnimesScreenBloc({required this.getBestAnimesUsecase})
      : super(AnimesScreenInitial()) {
    on<GetBestAnimes>(_getBestAnimes);
    on<AnimeChanged>(_changeAnime);
  }

  final GetBestAnimesUsecase getBestAnimesUsecase;
  List<Anime> animes = [];

  Future<void> _getBestAnimes(
      GetBestAnimes event, Emitter<AnimesScreenState> emit) async {
    try {
      emit(AnimesScreenLoading());
      animes = await getBestAnimesUsecase.call();
      emit(AnimesScreenLoaded(animes));
    } catch (e) {
      emit(AnimesScreenError());
      print('error: $e');
    }
  }

  Future<void> _changeAnime(AnimeChanged event, Emitter<AnimesScreenState> emit) async {
    try {
      final int index = animes.indexWhere((Anime anime) => anime.id == event.anime.id);
      animes[index] = event.anime;
      emit(AnimesScreenLoaded(animes));
    } catch (e) {
      emit(AnimesScreenError());
      print('error: $e');
    }
  }
}
