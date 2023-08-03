import 'package:anime_new/consts/color_consts.dart';
import 'package:anime_new/consts/strings.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/bloc/single_anime_screen_bloc.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/usecase/get_anime_characters.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/usecase/toggle_favorites_usecase.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/anime_characters_list.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/anime_synopsis.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/anime_title.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/common_text.dart';
import 'package:anime_new/presentation/widgets/subtitle_text.dart';
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
            appBar: _buildAppBar(context),
            floatingActionButton: _buildFab(context),
            body: NotificationListener<UserScrollNotification>(
              onNotification: (UserScrollNotification notification) =>
                  _onDirectionChange(notification),
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      AnimeTitle(
                        text: widget.anime.titleJapanese,
                      ),
                      Image.network(widget.anime.images?.jpg.imageUrl ?? ''),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: <Widget>[
                          SubtitleText(
                            subtitle: Strings.animesPageStrings.year,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CommonText(text: widget.anime.year.toString()),
                        ],
                      ),
                      AnimeSynopsis(anime: widget.anime),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SubtitleText(
                          subtitle: Strings.animesPageStrings.characters,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      BlocBuilder<SingleAnimeScreenBloc,
                          SingleAnimeScreenState>(
                        buildWhen: (SingleAnimeScreenState prev,
                            SingleAnimeScreenState next) {
                          return next is! SingleAnimeScreenChanged;
                        },
                        builder: (BuildContext context,
                            SingleAnimeScreenState state) {
                          if (state is SingleAnimeScreenCharactersLoaded) {
                            return AnimeCharactersList(
                                characters: state.charactersList);
                          }
                          return const CircularProgressIndicator();
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  bool _onDirectionChange(UserScrollNotification notification) {
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
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(widget.anime.title),
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          final Anime anime = context.read<SingleAnimeScreenBloc>().anime;
          Navigator.of(context).pop(anime);
        },
        icon: const Icon(
          Icons.arrow_back,
          size: 30,
        ),
      ),
    );
  }

  Widget? _buildFab(BuildContext context) {
    if (isFabVisible) {
      return FloatingActionButton(
        backgroundColor: AppColors.purple,
        child: Icon(
          Icons.favorite,
          size: 40,
          color: context.select<SingleAnimeScreenBloc, bool>(
                  (SingleAnimeScreenBloc bloc) => bloc.anime.isFavorite)
              ? AppColors.lightOrange
              : AppColors.white,
        ),
        onPressed: () {
          context
              .read<SingleAnimeScreenBloc>()
              .add(ToggleFavoritesEvent(anime: widget.anime));
        },
      );
    } else {
      return null;
    }
  }
}
