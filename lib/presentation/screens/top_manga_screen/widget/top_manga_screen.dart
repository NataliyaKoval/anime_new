import 'package:anime_new/domain/repository/top_manga_repository.dart';
import 'package:anime_new/presentation/screens/top_manga_screen/bloc/top_manga_screen_cubit.dart';
import 'package:anime_new/presentation/screens/top_manga_screen/usecase/get_top_manga.dart';
import 'package:anime_new/presentation/screens/top_manga_screen/widget/top_manga_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopMangaScreen extends StatelessWidget {
  const TopMangaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TopMangaScreenCubit>(
      create: (BuildContext context) => TopMangaScreenCubit(
        getTopMangaUsecase: GetTopMangaUsecase(
          topMangaRepository: context.read<TopMangaRepository>(),
        ),
      )..getTopManga(),
      child: Builder(builder: (BuildContext context) {
        return BlocConsumer<TopMangaScreenCubit, TopMangaScreenState>(
          listener: (BuildContext context, TopMangaScreenState state) {
            if (state is TopMangaScreenError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage),
                ),
              );
            }
          },
          buildWhen: (TopMangaScreenState prev, TopMangaScreenState next) {
            return next is! TopMangaScreenError;
          },
          builder: (BuildContext context, TopMangaScreenState state) {
            if (state is TopMangaScreenLoaded) {
              return TopMangaList(
                topMangaList: state.topMangaList,
                isLastPage: state.isLastPage,
                onFinishingScroll: () =>
                    context.read<TopMangaScreenCubit>().getTopManga(),
              );
            } else if (state is TopMangaScreenError) {
              return Center(
                child: ElevatedButton(
                  child: const Text('Retry'),
                  onPressed: () {
                    context.read<TopMangaScreenCubit>().getTopManga();
                  },
                ),
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        );
      }),
    );
  }
}
