import 'package:anime_new/domain/repository/animes_repository.dart';
import 'package:anime_new/presentation/screens/favorites_screen/bloc/favorites_screen_cubit.dart';
import 'package:anime_new/presentation/screens/favorites_screen/usecase/get_favorite_animes_usecase.dart';
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
          ),
        )..getFavoriteAnimes(),
        child: BlocBuilder<FavoritesScreenCubit, FavoritesScreenState>(
          builder: (BuildContext context, FavoritesScreenState state) {
            if (state is FavoritesScreenLoaded) {
              return ListView.builder(
                itemCount: state.favoriteAnimes?.length,
                itemBuilder: (BuildContext context, int index) {
                  if (state.favoriteAnimes != null) {
                    return Text(state.favoriteAnimes![index].title);
                  } else {
                    return const Text('no title');
                  }
                },
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
