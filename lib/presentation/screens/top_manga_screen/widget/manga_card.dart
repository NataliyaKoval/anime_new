import 'package:anime_new/consts/app_images.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/manga_detail_screen/widget/manga_detail_page.dart';
import 'package:flutter/material.dart';


class MangaCard extends StatelessWidget {
  const MangaCard({
    Key? key,
    required this.manga,
  }) : super(key: key);

  final Manga manga;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => MangaDetailPage(manga: manga),
            ));
      },
      child: Image.network(
          manga.images?.jpg?.imageUrl ?? AppImages.defaultImage),
    );
  }
}
