import 'package:anime_new/consts/color_consts.dart';
import 'package:anime_new/domain/models/anime.dart';
import 'package:anime_new/presentation/screens/single_anime_screen/widget/single_anime_screen.dart';
import 'package:flutter/material.dart';

class FavoriteListTile extends StatelessWidget {
  const FavoriteListTile({Key? key, required this.anime}) : super(key: key);

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.yellow,
      decoration: BoxDecoration(border: Border.all(color: AppColors.lightPurple, width: 2,)),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(anime.title),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(Icons.delete, size: 30,),
          ),
        ],
      ),
    );
  }
}
