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
      headline1: TextStyle(
        color: AppColors.lightOrange,
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
      ),
      headline2: TextStyle(
        color: AppColors.lightPurple,
        fontSize: 24.0,
        fontWeight: FontWeight.w500,
      ),
      headline3: TextStyle(
        color: AppColors.lightOrange,
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: TextStyle(
        fontSize: 20.0,
      ),
      bodyText2: TextStyle(
        fontSize: 18.0,
      ),
    ),
    toggleButtonsTheme: const ToggleButtonsThemeData(
        selectedBorderColor: AppColors.lightOrange,
        color: AppColors.lightPurple,
        fillColor: AppColors.lightOrange,
        borderColor: AppColors.lightOrange),
  );
}
