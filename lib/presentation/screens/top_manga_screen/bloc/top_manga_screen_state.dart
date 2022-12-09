part of 'top_manga_screen_cubit.dart';

@immutable
abstract class TopMangaScreenState {}

class TopMangaScreenInitial extends TopMangaScreenState {}

class TopMangaScreenLoading extends TopMangaScreenState {}

class TopMangaScreenLoaded extends TopMangaScreenState {
  TopMangaScreenLoaded(this.topMangaList);

  final List<Manga> topMangaList;

}

class TopMangaScreenError extends TopMangaScreenState {}