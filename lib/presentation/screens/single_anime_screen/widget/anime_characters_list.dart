// import 'package:anime_new/domain/models/models.dart';
// import 'package:flutter/material.dart';
//
// class AnimeCharactersList extends StatefulWidget {
//   const AnimeCharactersList({Key? key, required this.anime}) : super(key: key);
//
//   final Anime anime;
//
//   @override
//   State<AnimeCharactersList> createState() => _AnimeCharactersListState();
// }
//
// class _AnimeCharactersListState extends State<AnimeCharactersList> {
//   late Future<List<AnimeCharacter>> futureAnimeCharacters;
//
//   @override
//   void initState() {
//     super.initState();
//     futureAnimeCharacters = fetchCharacters(widget.anime.mal_id);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: futureAnimeCharacters,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           final characters = snapshot.data!;
//           return Container(
//             height: 200,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: characters.length,
//               itemBuilder: (context, index) {
//                 return AnimeCharacterCard(animeCharacter: characters[index],);
//               },
//             ),
//           );
//         } else if (snapshot.hasError) {
//           return Text('$snapshot.error}');
//         }
//         return const CircularProgressIndicator();
//       },);
//   }
// }
