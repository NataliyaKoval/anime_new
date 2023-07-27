import 'package:anime_new/consts/color_consts.dart';
import 'package:anime_new/consts/strings.dart';
import 'package:anime_new/domain/models/models.dart';
import 'package:flutter/material.dart';

class AnimeSynopsis extends StatefulWidget {
  const AnimeSynopsis({Key? key, required this.anime}) : super(key: key);

  final Anime anime;

  @override
  State<AnimeSynopsis> createState() => _AnimeSynopsisState();
}

class _AnimeSynopsisState extends State<AnimeSynopsis> {
  bool isSynopsisReduced = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSynopsisReduced = !isSynopsisReduced;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: RichText(
          maxLines: isSynopsisReduced ? 4 : null,
          overflow:
              isSynopsisReduced ? TextOverflow.ellipsis : TextOverflow.visible,
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: Strings.animesPageStrings.synopsis,
              style: const TextStyle(
                color: AppColors.purple,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: widget.anime.synopsis,
              style: const TextStyle(
                color: AppColors.black,
                fontSize: 24,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
