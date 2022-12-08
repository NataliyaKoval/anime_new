// import 'package:flutter/material.dart';
//
// import '../domain/models/anime.dart';
// import '../models/anime.dart';
// import '../services/anime_service.dart';
// import '../widgets/anime_card.dart';
//
// class AnimeScreen extends StatefulWidget {
//   const AnimeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<AnimeScreen> createState() => _AnimeScreenState();
// }
//
// class _AnimeScreenState extends State<AnimeScreen> {
//   late Future<List<Anime>> futureAnimes;
//
//   @override
//   void initState() {
//     super.initState();
//     futureAnimes = fetchAnimes();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: FutureBuilder(
//         future: futureAnimes,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final animes = snapshot.data!;
//             return ListView.builder(
//               padding: const EdgeInsets.all(10.0),
//               itemCount: animes.length,
//               itemBuilder: (context, index) {
//                 return AnimeCard(anime: animes[index]);
//               },
//             );
//           } else if (snapshot.hasError) {
//             return Text('$snapshot.error}');
//           }
//           return const CircularProgressIndicator();
//         },
//       ),
//     );
//   }
// }
