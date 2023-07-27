import 'package:anime_new/consts/color_consts.dart';
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.black,
        fontSize: 24,
      ),
    );
  }
}
