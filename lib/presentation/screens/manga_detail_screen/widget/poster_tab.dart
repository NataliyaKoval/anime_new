import 'package:flutter/material.dart';

class PosterTab extends StatelessWidget {
  const PosterTab({
    Key? key,
    required this.imageSrc,
  }) : super(key: key);

  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageSrc,
      fit: BoxFit.fitWidth,
      height: double.infinity,
      width: double.infinity,
    );
  }
}
