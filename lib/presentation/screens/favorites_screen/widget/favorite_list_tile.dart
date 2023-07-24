import 'package:anime_new/consts/color_consts.dart';
import 'package:anime_new/domain/models/anime.dart';
import 'package:anime_new/presentation/screens/favorites_screen/bloc/favorites_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteListTile extends StatelessWidget {
  const FavoriteListTile({Key? key, required this.anime}) : super(key: key);

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: AppColors.lightPurple,
        width: 2,
      )),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(anime.title),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              context
                  .read<FavoritesScreenCubit>()
                  .deleteAnimeFromFavorites(anime.id);
            },
            icon: const Icon(
              Icons.delete,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
