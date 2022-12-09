import 'package:anime_new/domain/models/models.dart';
import 'package:flutter/material.dart';

class AnimeCharacterCard extends StatelessWidget {
  const AnimeCharacterCard({Key? key, required this.animeCharacter})
      : super(key: key);

  final AnimeCharacter animeCharacter;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (animeCharacter.character.images?.jpg?.imageUrl != null) Image.network(height: 150, animeCharacter.character.images!.jpg!.imageUrl!) else Image.network(height: 150, 'https://images.unsplash.com/photo-1606425271394-c3ca9aa1fc06?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'),
          Text(animeCharacter.character.name),
        ],
      ),
    );
  }
}
