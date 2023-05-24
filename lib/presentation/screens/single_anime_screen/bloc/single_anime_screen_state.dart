part of 'single_anime_screen_bloc.dart';

@immutable
abstract class SingleAnimeScreenState {}

class SingleAnimeScreenInitial extends SingleAnimeScreenState {}

class SingleAnimeScreenChanged extends SingleAnimeScreenState {
  SingleAnimeScreenChanged(this.anime);

  final Anime anime;
}

class SingleAnimeScreenCharactersLoading extends SingleAnimeScreenState {}

class SingleAnimeScreenCharactersLoaded extends SingleAnimeScreenState {
  SingleAnimeScreenCharactersLoaded(this.charactersList);

  final List<AnimeCharacter> charactersList;
}

class SingleAnimeScreenError extends SingleAnimeScreenState {}
