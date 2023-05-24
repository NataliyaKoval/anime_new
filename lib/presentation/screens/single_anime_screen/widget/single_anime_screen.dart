import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/bloc/single_anime_screen_bloc.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/usecase/get_anime_characters.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/usecase/toggle_favorites_usecase.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/anime_character_card.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/anime_synopsis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingleAnimeScreen extends StatefulWidget {
  const SingleAnimeScreen({Key? key, required this.anime}) : super(key: key);

  final Anime anime;

  @override
  State<SingleAnimeScreen> createState() => _SingleAnimeScreenState();
}

class _SingleAnimeScreenState extends State<SingleAnimeScreen> {
  bool isFabVisible = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SingleAnimeScreenBloc>(
      create: (BuildContext context) => SingleAnimeScreenBloc(
        anime: widget.anime,
        getAnimeCharactersUsecase: GetAnimeCharactersUsecase(
          animesRepository: context.read<AnimesRepository>(),
        ),
        toggleFavoritesUsecase: ToggleFavoritesUsecase(
            animesRepository: context.read<AnimesRepository>()),
      )..add(GetAnimeCharacters(widget.anime.id)),
      child: Builder(builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async {
            final Anime anime = context.read<SingleAnimeScreenBloc>().anime;
            Navigator.of(context).pop(anime);
            return false;
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(widget.anime.title),
              automaticallyImplyLeading: false,
              leading: IconButton(
                onPressed: () {
                  final Anime anime =
                      context.read<SingleAnimeScreenBloc>().anime;
                  Navigator.of(context).pop(anime);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
            ),
            body: NotificationListener<UserScrollNotification>(
              onNotification: (UserScrollNotification notification) {
                if (notification.direction == ScrollDirection.forward) {
                  setState(() {
                    isFabVisible = true;
                  });
                } else if (notification.direction == ScrollDirection.reverse) {
                  setState(() {
                    isFabVisible = false;
                  });
                }
                return true;
              },
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(children: <Widget>[
                    Text(
                      widget.anime.title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.anime.titleJapanese,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Image.network(widget.anime.images?.jpg.imageUrl ?? ''),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        Text('Year:',
                            style: Theme.of(context).textTheme.headline3),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(widget.anime.year.toString(),
                            style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AnimeSynopsis(
                      anime: widget.anime,
                    ),
                    Builder(builder: (BuildContext context) {
                      return Container(
                        child: BlocBuilder<SingleAnimeScreenBloc,
                            SingleAnimeScreenState>(
                          buildWhen: (SingleAnimeScreenState prev,
                              SingleAnimeScreenState next) {
                            return next is! SingleAnimeScreenChanged;
                          },
                          builder: (BuildContext context,
                              SingleAnimeScreenState state) {
                            if (state is SingleAnimeScreenCharactersLoaded) {
                              final List<AnimeCharacter> animeCharacters =
                                  state.charactersList;
                              return Container(
                                height: 200,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: animeCharacters.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return AnimeCharacterCard(
                                        animeCharacter: animeCharacters[index],
                                      );
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
            floatingActionButton: isFabVisible
                ? Builder(builder: (BuildContext context) {
                    return FloatingActionButton(
                      backgroundColor: Colors.yellow,
                      child: Icon(
                        Icons.favorite,
                        size: 40,
                        color: context.select<SingleAnimeScreenBloc, bool>(
                                (SingleAnimeScreenBloc bloc) =>
                                    bloc.anime.isFavorite)
                            ? Colors.red
                            : Colors.black,
                      ),
                      onPressed: () {
                        context
                            .read<SingleAnimeScreenBloc>()
                            .add(ToggleFavoritesEvent(anime: widget.anime));
                      },
                    );
                  })
                : null,
          ),
        );
      }),
    );
  }
}
