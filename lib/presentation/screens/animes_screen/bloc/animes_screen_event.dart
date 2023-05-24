part of 'animes_screen_bloc.dart';

@immutable
abstract class AnimesScreenEvent {
  const AnimesScreenEvent();
}

class GetBestAnimes extends AnimesScreenEvent {}

class AnimeChanged extends AnimesScreenEvent {
  const AnimeChanged(this.anime);

  final Anime anime;
}
