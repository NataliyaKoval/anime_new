import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/characters_repository.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/bloc/single_anime_screen_bloc.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/usecase/get_anime_characters.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/anime_character_card.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/anime_characters_list.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/anime_synopsis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingleAnimeScreen extends StatelessWidget {
  const SingleAnimeScreen({Key? key, required this.anime}) : super(key: key);

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SingleAnimeScreenBloc>(
      create: (BuildContext context) => SingleAnimeScreenBloc(
        getAnimeCharactersUsecase: GetAnimeCharactersUsecase(
          charactersRepository: context.read<CharactersRepository>(),
        ),
      )..add(GetAnimeCharacters(anime.id)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(anime.title),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(children: <Widget>[
              Text(
                anime.title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                anime.titleJapanese,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 8,
              ),
              Image.network(anime.images?.jpg.imageUrl ?? ''),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: <Widget>[
                  Text('Year:', style: Theme.of(context).textTheme.headline3),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(anime.year.toString(),
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              AnimeSynopsis(
                anime: anime,
              ),
              Builder(builder: (BuildContext context) {
                return Container(
                  child: BlocBuilder<SingleAnimeScreenBloc,
                      SingleAnimeScreenState>(
                    builder:
                        (BuildContext context, SingleAnimeScreenState state) {
                      if (state is SingleAnimeScreenCharactersLoaded) {
                        final List<AnimeCharacter> animeCharacters =
                            state.charactersList;
                        return Container(
                          height: 200,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: animeCharacters.length,
                              itemBuilder: (BuildContext context, int index) {
                                //return Text(animeCharacters[index].character.name);
                                return AnimeCharacterCard(animeCharacter: animeCharacters[index],);
                              }),
                        );
                      } else if (state is SingleAnimeScreenError) {
                        return const Text('SingleAnimeScreenError');
                      }
                      return const CircularProgressIndicator();
                    },
                  ),
                );
              }),
              //AnimeCharactersList(anime: anime),
            ]),
          ),
        ),
      ),
    );
  }
}
