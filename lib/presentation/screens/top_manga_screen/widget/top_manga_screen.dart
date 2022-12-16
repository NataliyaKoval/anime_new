import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/top_manga_repository.dart';
import 'package:anime_new/presentation/screens/top_manga_screen/bloc/top_manga_screen_cubit.dart';
import 'package:anime_new/presentation/screens/top_manga_screen/usecase/get_top_manga.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopMangaScreen extends StatefulWidget {
  const TopMangaScreen({Key? key}) : super(key: key);

  @override
  State<TopMangaScreen> createState() => _TopMangaScreenState();
}

class _TopMangaScreenState extends State<TopMangaScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TopMangaScreenCubit>(
      create: (BuildContext context) => TopMangaScreenCubit(
        getTopMangaUsecase: GetTopMangaUsecase(
          topMangaRepository: context.read<TopMangaRepository>(),
        ),
      )..getTopManga(),
      child: Builder(builder: (BuildContext context) {
        return BlocBuilder<TopMangaScreenCubit, TopMangaScreenState>(
            builder: (BuildContext context, TopMangaScreenState state) {
          if (state is TopMangaScreenLoaded) {
            return ListView.separated(
              controller: _scrollController
                ..addListener(() {
                  if (_scrollController.position.pixels >
                          _scrollController.position.maxScrollExtent - 200 &&
                      !state.isLastPage) {
                    context.read<TopMangaScreenCubit>().getTopManga();
                  }
                }),
              itemCount: state.topMangaList.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index < state.topMangaList.length) {
                  return SizedBox(
                    height: 120,
                    child: Card(
                      color: Colors.black,
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Text(
                        state.topMangaList[index].id.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                    ),
                  );
                } else {
                  return Center(
                    child: state.isLastPage
                        ? const Text(
                            'You\'ve reached the end of the list',
                            style: TextStyle(fontSize: 22),
                          )
                        : const CircularProgressIndicator(),
                  );
                }
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 20),
            );
          } else if (state is TopMangaScreenError) {
            return const Text('TopMangaScreenError');
          }
          //return const CircularProgressIndicator();
          return Container(
            color: Colors.yellow,
          );
        });
      }),
    );
  }
}
