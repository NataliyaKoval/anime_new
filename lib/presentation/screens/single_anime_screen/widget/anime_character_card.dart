import 'package:anime_new/consts/app_images.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:flutter/material.dart';

class AnimeCharacterCard extends StatelessWidget {
  const AnimeCharacterCard({Key? key, required this.animeCharacter})
      : super(key: key);

  final AnimeCharacter animeCharacter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: FadeInImage.assetNetwork(
              fit: BoxFit.fitHeight,
              placeholder: 'assets/images/placeholder.png',
              image: animeCharacter.character.images?.jpg?.imageUrl ??
                  AppImages.defaultImage,
            ),
          ),
          SizedBox(
              height: 54,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 0,
                ),
                child: Text(
                  animeCharacter.character.name,
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
