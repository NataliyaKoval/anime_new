import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../providers/theme_provider.dart';

class AppPreferences {
  Future<void> setThemeMode(int index, BuildContext context) async {
    ThemeMode themeMode = index == 0 ? ThemeMode.system : (index == 1 ? ThemeMode.light : ThemeMode.dark);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String themeModeString = EnumToString.convertToString(themeMode);
    prefs.setString("theme", themeModeString);
    context.read<ThemeProvider>().themeMode = themeMode;
  }

  Future<void> syncThemeMode(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    context.read<ThemeProvider>().themeMode = EnumToString.fromString(
        ThemeMode.values, prefs.getString("theme") ?? "system")!;
  }
}