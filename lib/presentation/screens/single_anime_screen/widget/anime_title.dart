import 'package:anime_new/consts/color_consts.dart';
import 'package:flutter/material.dart';

class AnimeTitle extends StatelessWidget {
  const AnimeTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text.toUpperCase(),
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 28,
          color: AppColors.purple,
        ),
      ),
    );
  }
}
