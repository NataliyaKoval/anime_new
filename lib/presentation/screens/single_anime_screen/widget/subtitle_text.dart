import 'package:anime_new/consts/color_consts.dart';
import 'package:flutter/material.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({
    Key? key,
    required this.subtitle,
  }) : super(key: key);

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: const TextStyle(
        color: AppColors.purple,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
