import 'package:anime_new/providers/theme_provider.dart';
import 'package:anime_new/screens/home.dart';
import 'package:anime_new/themes/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
      ],
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime',
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      themeMode: context.watch<ThemeProvider>().getTheme(),
      home: FutureBuilder(
        future: _syncTheme(context),
        builder: (context, snapshot) => const Home(),
      ),
    );
  }

  Future<void> _syncTheme(BuildContext context) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    context.read<ThemeProvider>().theme = _prefs.getString("theme") ?? "system";
  }
}
