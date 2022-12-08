import 'package:anime_new/consts/color_consts.dart';
import 'package:anime_new/domain/models/anime.dart';
import 'package:flutter/material.dart';

import '../screens/single_anime_screen.dart';

class AnimeCard extends StatelessWidget {

  const AnimeCard({Key? key, required this.anime}) : super(key: key);

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => SingleAnimeScreen(anime: anime)),
        // );
      },
      child: Card(
        shadowColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
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
