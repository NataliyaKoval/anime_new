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
      child: SizedBox(
        height: isSynopsisReduced ? 90 : null,
        child: RichText(
          maxLines: isSynopsisReduced ? 4 : null,
          overflow: isSynopsisReduced ? TextOverflow.ellipsis : TextOverflow.visible,
          text: TextSpan(
              style: Theme.of(context).textTheme.bodyText2,
              children: <TextSpan>[
                TextSpan(
                    text: 'Synopsis: ',
                    style: Theme.of(context).textTheme.headline3),
                TextSpan(text: widget.anime.synopsis,),
              ]),
        ),
      ),
    );
  }
}
