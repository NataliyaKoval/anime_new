import 'package:flutter/material.dart';
import '../consts/color_consts.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.purple,
      secondary: AppColors.orange,
    ),
  );

  ThemeData darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.grey,
      secondary: AppColors.orange,
    ),
  );
}
