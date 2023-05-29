import 'package:anime_new/data/entity/entities.dart';
import 'package:anime_new/di/providers.dart';
import 'package:anime_new/presentation/screens/home_screen/widget/home_screen.dart';
import 'package:anime_new/themes/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<AnimeEntity>(AnimeEntityAdapter());
  Hive.registerAdapter<AnimeImagesEntity>(AnimeImagesEntityAdapter());
  Hive.registerAdapter<AnimeJpgEntity>(AnimeJpgEntityAdapter());
  await Hive.openBox<AnimeEntity>('favoriteAnimes');

  runApp(const MyApp());
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
    return MultiProvider(
      providers: providers.providers,
      child: MaterialApp(
        title: 'Anime',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: Scaffold(
          appBar: AppBar(),
          body: HomeScreen(),
        ),
      ),
    );
  }
}
