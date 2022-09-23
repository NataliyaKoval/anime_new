import 'package:flutter/material.dart';

import '../main.dart';

class SettingsDrawer extends StatelessWidget {
  const SettingsDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () => MyApp.of(context).changeTheme(ThemeMode.light),
            icon: const Icon(Icons.sunny,
            size: 50,),
          ),
          IconButton(
            onPressed: () => MyApp.of(context).changeTheme(ThemeMode.dark),
            icon: const Icon(Icons.cloud,
            size: 50,),
          ),
        ],
      ),
    );
  }
}
