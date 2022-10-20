import 'package:flutter/material.dart';

import '../models/anime.dart';
import '../services/anime_service.dart';

class AnimeScreen extends StatefulWidget {
  const AnimeScreen({Key? key}) : super(key: key);

  @override
  State<AnimeScreen> createState() => _AnimeScreenState();
}

class _AnimeScreenState extends State<AnimeScreen> {
  late Future<List<Anime>> futureAnimes;

  @override
  void initState() {
    super.initState();
    futureAnimes = fetchAnimes();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: futureAnimes,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final animes = snapshot.data!;
            return ListView.builder(
              itemCount: animes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(animes[index].title),
                  );
                });
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      )
    );
  }
}

