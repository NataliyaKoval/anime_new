part of 'animes_screen_bloc.dart';

@immutable
abstract class AnimesScreenState {}

class AnimesScreenInitial extends AnimesScreenState {}

class AnimesScreenLoading extends AnimesScreenState {}

class AnimesScreenLoaded extends AnimesScreenState {
  AnimesScreenLoaded(this.animeList);

  final List<Anime> animeList;

}

class AnimesScreenError extends AnimesScreenState {}
