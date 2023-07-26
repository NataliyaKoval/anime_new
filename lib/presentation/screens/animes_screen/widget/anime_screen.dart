import 'package:anime_new/consts/strings.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/presentation/screens/animes_screen/bloc/animes_screen_bloc.dart';
import 'package:anime_new/presentation/screens/animes_screen/usecase/get_best_animes.dart';
import 'package:anime_new/presentation/screens/animes_screen/widget/anime_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeScreen extends StatelessWidget {
  const AnimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AnimesScreenBloc>(
      create: (BuildContext context) => AnimesScreenBloc(
        getBestAnimesUsecase: GetBestAnimesUsecase(
          repository: context.read<AnimesRepository>(),
        ),
      )..add(GetBestAnimes()),
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(title: Text(Strings.animesPageStrings.title)),
            body: Container(
              child: BlocBuilder<AnimesScreenBloc, AnimesScreenState>(
                builder: (BuildContext context, AnimesScreenState state) {
                  if (state is AnimesScreenLoaded) {
                    final List<Anime> animes = state.animeList;
                    return ListView.builder(
                      padding: const EdgeInsets.all(10.0),
                      itemCount: animes.length,
                      itemBuilder: (BuildContext context, int index) {
                        return AnimeCard(anime: animes[index]);
                      },
                    );
                  } else if (state is AnimesScreenError) {
                    return const Text('AnimesScreenError');
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ),
          );
        }
      ),
    );
  }
}
