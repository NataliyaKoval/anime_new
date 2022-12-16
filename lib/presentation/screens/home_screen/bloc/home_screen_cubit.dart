import 'package:anime_new/presentation/screens/animes_screen/widget/anime_screen.dart';
import 'package:anime_new/presentation/screens/top_manga_screen/widget/top_manga_screen.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenState(selectedIndex: 0));

  int index = 0;


  Future<void> changeScreen(int newIndex) async {

    emit(
      HomeScreenState(
          selectedIndex: newIndex),
    );
  }
}
