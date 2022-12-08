// import 'package:flutter/material.dart';
//
// import '../models/anime.dart';
// import '../models/anime_character.dart';
// import '../services/anime_service.dart';
// import 'anime_character_card.dart';
// class AnimeCharactersList extends StatefulWidget {
//   final Anime anime;
//   const AnimeCharactersList({Key? key, required this.anime}) : super(key: key);
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
