import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../database/app_preferences.dart';
import '../providers/theme_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeWatcher = context.watch<ThemeProvider>();
    AppPreferences appPreferences = AppPreferences();

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ToggleButtons(
            isSelected: [
              themeWatcher.themeMode == ThemeMode.system,
              themeWatcher.themeMode == ThemeMode.light,
              themeWatcher.themeMode == ThemeMode.dark,
            ],
            onPressed: (index) async => await appPreferences.setThemeMode(index, context),
            children: const [
              Icon(Icons.phone),
              Icon(Icons.sunny),
              Icon(Icons.cloud),
            ],
          ),
        ],
      ),
    );
  }
}
