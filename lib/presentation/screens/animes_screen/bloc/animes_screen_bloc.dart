import 'dart:async';

import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/animes_screen/usecase/get_best_animes.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../data/repository/repository.dart';


part 'animes_screen_event.dart';

part 'animes_screen_state.dart';

class AnimesScreenBloc extends Bloc<AnimesScreenEvent, AnimesScreenState> {
  final GetBestAnimesUsecase getBestAnimesUsecase;

  AnimesScreenBloc({required this.getBestAnimesUsecase})
      : super(AnimesScreenInitial()) {
    on<GetBestAnimes>(_getBestAnimes);
  }

  Future<void> _getBestAnimes(GetBestAnimes event,
      Emitter<AnimesScreenState> emit) async {
    try {
      emit(AnimesScreenLoading());
      final List<Anime> bestAnimesList = await getBestAnimesUsecase.call();
      emit(AnimesScreenLoaded(bestAnimesList));
    } catch (e) {
      emit(AnimesScreenError());
      print('error: $e');
    }
  }
}
