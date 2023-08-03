import 'package:anime_new/consts/strings.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:anime_new/presentation/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    String startDate;
    String endDate;
    if (published?.from != null) {
      startDate = DateFormat.yMd().format(DateTime.parse(published!.from!).toLocal());
    } else {
      startDate = Strings.topMangaScreenStrings.noInfo;
    }

    if (published?.to != null) {
      endDate = DateFormat.yMd().format(DateTime.parse(published!.to!).toLocal());
    } else {
      endDate = Strings.topMangaScreenStrings.noInfo;
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
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
                Text(startDate),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: <Widget>[
                SubtitleText(
                  subtitle: Strings.topMangaScreenStrings.publishedTo,
                ),
                Text(endDate),
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
      ),
    );
  }
}
