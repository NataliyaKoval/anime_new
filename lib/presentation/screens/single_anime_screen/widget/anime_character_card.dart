import 'package:anime_new/consts/app_images.dart';
import 'package:anime_new/consts/color_consts.dart';
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
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(
          width: 2,
          color: AppColors.purple,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Image.network(
              animeCharacter.character.images?.jpg?.imageUrl ??
                  AppImages.defaultImage,
              fit: BoxFit.fitHeight,
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
                  textAlign: TextAlign.right,
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
