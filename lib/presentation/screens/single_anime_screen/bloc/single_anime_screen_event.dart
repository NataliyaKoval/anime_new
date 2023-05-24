part of 'single_anime_screen_bloc.dart';

@immutable
abstract class SingleAnimeScreenEvent {}

class GetAnimeCharacters extends SingleAnimeScreenEvent {
  GetAnimeCharacters(this.id);

  final int id;
}

class ToggleFavoritesEvent extends SingleAnimeScreenEvent {
  ToggleFavoritesEvent({
    required this.anime,
  });

  final Anime anime;
}