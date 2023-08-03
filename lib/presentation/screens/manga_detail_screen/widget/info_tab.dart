import 'package:anime_new/consts/strings.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({
    Key? key,
    this.chapters,
    this.published,
    this.score,
    required this.authors,
    required this.genres,
  }) : super(key: key);

  final int? chapters;
  final MangaPublished? published;
  final double? score;
  final List<Author> authors;
  final List<Genre> genres;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SubtitleText(
                subtitle: Strings.topMangaScreenStrings.chapters,
              ),
              Text(chapters != null
                  ? chapters.toString()
                  : Strings.topMangaScreenStrings.noInfo),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: <Widget>[
              SubtitleText(
                subtitle: Strings.topMangaScreenStrings.publishedFrom,
              ),
              Text(published?.from ?? Strings.topMangaScreenStrings.noInfo),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: <Widget>[
              SubtitleText(
                subtitle: Strings.topMangaScreenStrings.publishedTo,
              ),
              Text(published?.to ?? Strings.topMangaScreenStrings.noInfo),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: <Widget>[
              SubtitleText(
                subtitle: Strings.topMangaScreenStrings.score,
              ),
              Text(score?.toString() ?? Strings.topMangaScreenStrings.noInfo),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SubtitleText(
                subtitle: Strings.topMangaScreenStrings.authors,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Text>[for (Author author in authors) Text(author.name ?? '')],
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SubtitleText(
                subtitle: Strings.topMangaScreenStrings.genres,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Text>[for (Genre genre in genres) Text(genre.name ?? '')],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
