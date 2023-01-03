import 'package:flutter_bloc/flutter_bloc.dart';

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
