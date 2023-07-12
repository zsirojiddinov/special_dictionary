import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:special_dictionary/bloc/bottom_bar/navbar_event.dart';
import 'package:special_dictionary/bloc/bottom_bar/navbar_state.dart';

class NavBarBloc extends Bloc<NavBarEvent, NavBarState> {
  var currentIndex = 0;

  NavBarBloc() : super(MyDictionaryState()) {
    on<ChangeEvent>(onChangeMethod);
  }

  onChangeMethod(ChangeEvent event, Emitter<NavBarState> emit) {
    print(event.index);
    currentIndex = event.index;

    switch (event.index) {
      case 0:
        emit(MyDictionaryState());
        return;
      case 1:
        emit(AllDictionaryState());
        return;
      case 2:
        emit(CabinetState());
        return;
    }
  }
}
