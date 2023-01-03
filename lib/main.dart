import 'package:anime_new/di/providers.dart';
import 'package:anime_new/presentation/screens/home_screen/widget/home_screen.dart';
import 'package:anime_new/providers/theme_provider.dart';
import 'package:anime_new/themes/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'database/app_preferences.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

static _MyAppState of(BuildContext context) =>
    context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  late Providers providers;

  @override
  void initState() {
    super.initState();
    providers = Providers();
  }

  @override
  Widget build(BuildContext context) {
   AppPreferences appPreferences = AppPreferences();

    return MultiProvider(
      providers: providers.providers,
      child: MaterialApp(
        title: 'Anime',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: context
            .watch<ThemeProvider>()
            .themeMode,
        home: Scaffold(
          appBar: AppBar(),
          //body: const AnimeScreen(),
          body: HomeScreen(),
        ),
        // home: FutureBuilder(
        //   future: appPreferences.syncThemeMode(context),
        //   builder: (context, snapshot) => const AnimeScreen(),
        ),
    );
  }
}
