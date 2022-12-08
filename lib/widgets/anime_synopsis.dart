// import 'package:flutter/material.dart';
//
// import '../models/anime.dart';
//
// class AnimeSynopsis extends StatefulWidget {
//   final Anime anime;
//   const AnimeSynopsis({Key? key, required this.anime}) : super(key: key);
//
//   @override
//   State<AnimeSynopsis> createState() => _AnimeSynopsisState();
// }
//
// class _AnimeSynopsisState extends State<AnimeSynopsis> {
//   bool isSynopsisReduced = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           isSynopsisReduced = !isSynopsisReduced;
//         });
//       },
//       child: SizedBox(
//         height: isSynopsisReduced ? 90 : null,
//         child: RichText(
//           maxLines: isSynopsisReduced ? 4 : null,
//           overflow: isSynopsisReduced ? TextOverflow.ellipsis : TextOverflow.visible,
//           text: TextSpan(
//               style: Theme.of(context).textTheme.bodyText2,
//               children: [
//                 TextSpan(
//                     text: 'Synopsis: ',
//                     style: Theme.of(context).textTheme.headline3),
//                 TextSpan(text: widget.anime.synopsis,),
//               ]),
//         ),
//       ),
//     );
//   }
// }
