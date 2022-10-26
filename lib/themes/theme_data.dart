import 'package:flutter/material.dart';
import '../consts/color_consts.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.purple,
      secondary: AppColors.orange,
    ),
    iconTheme: const IconThemeData(
      size: 40,
    ),
  );

  ThemeData darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.grey,
      secondary: AppColors.orange,
    ),
    iconTheme: const IconThemeData(
      size: 40,
    ),
    textTheme: const TextTheme(
      headline2: TextStyle(
        color: AppColors.lightOrange,
        fontSize: 24.0,
        fontWeight: FontWeight.w500,
      )
    ),
    toggleButtonsTheme: const ToggleButtonsThemeData(
        selectedBorderColor: AppColors.lightOrange,
        color: AppColors.lightPurple,
        fillColor: AppColors.lightOrange,
        borderColor: AppColors.lightOrange),
  );
}
