import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/top_manga_repository.dart';
import 'package:anime_new/presentation/screens/top_manga_screen/bloc/top_manga_screen_cubit.dart';
import 'package:anime_new/presentation/screens/top_manga_screen/usecase/get_top_manga.dart';
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
      )..onTopMangaScreenInit(),
      child: Builder(builder: (BuildContext context) {
        return BlocBuilder<TopMangaScreenCubit, TopMangaScreenState>(
            builder: (BuildContext context, TopMangaScreenState state) {
          if (state is TopMangaScreenLoaded) {
            final List<Manga> topMangaList = state.topMangaList;
            return GridView.builder(
              itemCount: topMangaList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1 / 1.4,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.black,
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Text(
                    topMangaList[index].title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                );
              },
            );
          } else if (state is TopMangaScreenError) {
            return const Text('TopMangaScreenError');
          }
          return const CircularProgressIndicator();
        });
      }),
    );
  }
}
