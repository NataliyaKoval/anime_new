import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/anime_character_card.dart';
import 'package:flutter/material.dart';

class AnimeCharactersList extends StatelessWidget {
  const AnimeCharactersList({
    Key? key,
    required this.characters,
  }) : super(key: key);

  final List<AnimeCharacter> characters;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: characters.length,
          separatorBuilder:
              (BuildContext context, int index) =>
          const SizedBox(
            width: 8,
          ),
          itemBuilder:
              (BuildContext context, int index) {
            return AnimeCharacterCard(
              animeCharacter: characters[index],
            );
          }),
    );
  }
}
