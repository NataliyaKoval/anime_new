part of 'favorites_screen_cubit.dart';

@immutable
abstract class FavoritesScreenState {}

class FavoritesScreenInitial extends FavoritesScreenState {}

class FavoritesScreenLoaded extends FavoritesScreenState {
  FavoritesScreenLoaded({
    required this.favoriteAnimes,
  });

  final List<Anime>? favoriteAnimes;
}

class FavoritesScreenEmpty extends FavoritesScreenState {}

class FavoritesScreenError extends FavoritesScreenState {
  FavoritesScreenError(this.errorMessage);

  final String errorMessage;
}