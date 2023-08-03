import 'package:anime_new/consts/color_consts.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/screens/manga_detail_screen/widget/info_tab.dart';
import 'package:anime_new/presentation/screens/manga_detail_screen/widget/poster_tab.dart';
import 'package:anime_new/presentation/screens/manga_detail_screen/widget/synopsis_tab.dart';
import 'package:flutter/material.dart';

import '../../../../consts/app_images.dart';

class MangaDetailPage extends StatelessWidget {
  const MangaDetailPage({
    Key? key,
    required this.manga,
  }) : super(key: key);

  final Manga manga;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(manga.title),),
      body: DefaultTabController(
        length: 3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const TabBar(
              indicatorWeight: 5,
              indicatorColor: AppColors.purple,
              labelColor: AppColors.lightOrange,
              tabs: [
                Tab(
                  icon: Icon(Icons.receipt_long),
                ),
                Tab(
                  icon: Icon(
                    Icons.new_releases,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.text_snippet,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  PosterTab(
                    imageSrc:
                        manga.images?.jpg?.imageUrl ?? AppImages.defaultImage,
                  ),
                  InfoTab(
                    chapters: manga.chapters,
                    published: manga.published,
                    score: manga.score,
                    authors: manga.authors,
                    genres: manga.genres,
                  ),
                  SynopsisTab(
                    text: manga.synopsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
