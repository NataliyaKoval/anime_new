part of 'top_manga_screen_cubit.dart';

@immutable
abstract class TopMangaScreenState {}

class TopMangaScreenInitial extends TopMangaScreenState {}

class TopMangaScreenLoading extends TopMangaScreenState {}

class TopMangaScreenLoaded extends TopMangaScreenState {
  TopMangaScreenLoaded({
    required this.topMangaList,
    required this.isLastPage,
  });

  final List<Manga> topMangaList;
  final bool isLastPage;
}

class TopMangaScreenError extends TopMangaScreenState {
  TopMangaScreenError(this.errorMessage);

  final String errorMessage;
}