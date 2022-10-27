import 'package:flutter/material.dart';

import '../models/anime.dart';
import '../widgets/anime_synopsis.dart';

class SingleAnimeScreen extends StatelessWidget {
  final Anime anime;

  const SingleAnimeScreen({Key? key, required this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(anime.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(children: [
            Text(
              anime.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              anime.title_japanese,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 8,
            ),
            Image.network(anime.images.jpg.image_url),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
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
            AnimeSynopsis(anime: anime,),
          ]),
        ),
      ),
    );
  }
}
