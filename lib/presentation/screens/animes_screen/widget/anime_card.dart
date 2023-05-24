import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/animes_screen/bloc/animes_screen_bloc.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/single_anime_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimeCard extends StatelessWidget {

  const AnimeCard({Key? key, required this.anime}) : super(key: key);

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final Anime? resultAnime = await Navigator.push<Anime>(
          context,
          MaterialPageRoute<Anime>(
              builder: (BuildContext context) => SingleAnimeScreen(anime: anime)),
        );
        if(resultAnime != null) {
          context.read<AnimesScreenBloc>().add(AnimeChanged(resultAnime));
        }
      },
      child: Card(
        shadowColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.network(anime.images?.jpg.imageUrl ?? ''),
                  Visibility(
                    visible: anime.isFavorite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: const [
                        Icon(
                          Icons.favorite,
                          size: 70,
                          color: Colors.black,
                        ),
                        Icon(
                          Icons.favorite,
                          size: 50,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                anime.title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
