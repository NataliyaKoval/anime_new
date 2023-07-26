import 'package:anime_new/consts/strings.dart';
import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/presentation/screens/favorites_screen/bloc/favorites_screen_cubit.dart';
import 'package:anime_new/presentation/screens/favorites_screen/usecase/delete_from_favorites_usecase.dart';
import 'package:anime_new/presentation/screens/favorites_screen/usecase/get_favorite_animes_usecase.dart';
import 'package:anime_new/presentation/screens/favorites_screen/widget/favorite_list_tile.dart';
import 'package:anime_new/presentation/screens/home_screen/bloc/home_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoritesScreenCubit>(
      create: (BuildContext context) => FavoritesScreenCubit(
        getFavoriteAnimesUsecase: GetFavoriteAnimesUsecase(
          repository: context.read<AnimesRepository>(),
        ),
        deleteFomFavoritesUseCase: DeleteFomFavoritesUseCase(
          animesRepository: context.read<AnimesRepository>(),
        ),
      )..getFavoriteAnimes(),
      child: BlocBuilder<FavoritesScreenCubit, FavoritesScreenState>(
          builder: (BuildContext context, FavoritesScreenState state) {
        return WillPopScope(
          onWillPop: () {
            context.read<HomeScreenCubit>().changeScreen(0);
            return Future<bool>.value(false);
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                Strings.favoritesScreenStrings.title,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildBody(context, state),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildBody(BuildContext context, FavoritesScreenState state) {
    if (state is FavoritesScreenLoaded) {
      return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 8,
        ),
        itemCount: state.favoriteAnimes.length,
        itemBuilder: (BuildContext context, int index) {
          return FavoriteListTile(
            anime: state.favoriteAnimes[index],
          );
        },
      );
    } else if (state is FavoritesScreenEmpty) {
      return Center(
        child: Text(
          Strings.favoritesScreenStrings.noFavorites,
        ),
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
