import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/presentation/screens/favorites_screen/bloc/favorites_screen_cubit.dart';
import 'package:anime_new/presentation/screens/favorites_screen/usecase/delete_from_favorites_usecase.dart';
import 'package:anime_new/presentation/screens/favorites_screen/usecase/get_favorite_animes_usecase.dart';
import 'package:anime_new/presentation/screens/favorites_screen/widget/favorite_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<FavoritesScreenCubit>(
        create: (BuildContext context) => FavoritesScreenCubit(
          getFavoriteAnimesUsecase: GetFavoriteAnimesUsecase(
            repository: context.read<AnimesRepository>(),
          ), deleteFomFavoritesUseCase: DeleteFomFavoritesUseCase(
          animesRepository: context.read<AnimesRepository>(),
        ),
        )..getFavoriteAnimes(),
        child: BlocBuilder<FavoritesScreenCubit, FavoritesScreenState>(
          builder: (BuildContext context, FavoritesScreenState state) {
            if (state is FavoritesScreenLoaded) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    height: 8,
                  ),
                  itemCount: state.favoriteAnimes.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FavoriteListTile(
                      anime: state.favoriteAnimes[index],
                    );
                  },
                ),
              );
            } else if (state is FavoritesScreenEmpty) {
              return const Center(
                child: Text('No favorite animes yet'),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
