import 'package:anime_new/consts/strings.dart';
import 'package:anime_new/presentation/screens/animes_screen/widget/anime_screen.dart';
import 'package:anime_new/presentation/screens/favorites_screen/widget/favorites_screen.dart';
import 'package:anime_new/presentation/screens/home_screen/bloc/home_screen_cubit.dart';
import 'package:anime_new/presentation/screens/top_manga_screen/widget/top_manga_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Widget> appScreens = <Widget>[
    const AnimeScreen(),
    const TopMangaScreen(),
    const FavoritesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeScreenCubit>(
      create: (BuildContext context) => HomeScreenCubit(),
      child: Builder(builder: (BuildContext context) {
        return BlocBuilder<HomeScreenCubit, HomeScreenState>(
          builder: (BuildContext context, HomeScreenState state) {
            return Scaffold(
              body: appScreens[state.selectedIndex],
              bottomNavigationBar: NavigationBar(
                height: 60,
                selectedIndex: state.selectedIndex,
                onDestinationSelected: (int newIndex) {
                  context.read<HomeScreenCubit>().changeScreen(newIndex);
                },
                destinations: <NavigationDestination>[
                  NavigationDestination(
                    icon: const Icon(Icons.videocam),
                    label: Strings.homePageStrings.animeNavigationButton,
                  ),
                  NavigationDestination(
                    icon: const Icon(Icons.book),
                    label: Strings.homePageStrings.mangaNavigationButton,
                  ),
                  NavigationDestination(
                    icon: const Icon(Icons.favorite),
                    label: Strings.homePageStrings.favoritesNavigationButton,
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
