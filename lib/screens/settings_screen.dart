import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../providers/theme_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider _themeWatcher = context.watch<ThemeProvider>();

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // IconButton(
          //   onPressed: () {
          //     _themeWatcher.theme == "light";
          //   },
          //   icon: const Icon(
          //     Icons.sunny,
          //     size: 50,
          //   ),
          // ),
          // IconButton(
          //   onPressed: () {
          //     _themeWatcher.theme == "dark";
          //   },
          //   icon: const Icon(
          //     Icons.cloud,
          //     size: 50,
          //   ),
          // ),
          ToggleButtons(
            children: const [
              Icon(Icons.phone),
              Icon(Icons.sunny),
              Icon(Icons.shield_moon),
            ],
            isSelected: [
              _themeWatcher.theme == "system",
              _themeWatcher.theme == "light",
              _themeWatcher.theme == "dark",
            ],
            onPressed: (index) async => await _setTheme(index, context),
          ),
          Text(
            _themeWatcher.getTheme().toString(),
            style: const TextStyle(fontSize: 30.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Future<void> _setTheme(int index, BuildContext context) async {
    String _theme = index == 0 ? "system" : (index == 1 ? "light" : "dark");
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString("theme", _theme);
    context.read<ThemeProvider>().theme = _theme;
  }
}
