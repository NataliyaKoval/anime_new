import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/single_anime_screen.dart';
import 'package:flutter/material.dart';

class AnimeCard extends StatelessWidget {

  const AnimeCard({Key? key, required this.anime}) : super(key: key);

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
              builder: (BuildContext context) => SingleAnimeScreen(anime: anime)),
        );
      },
      child: Card(
        shadowColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Image.network(anime.images?.jpg.imageUrl ?? ''),
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
