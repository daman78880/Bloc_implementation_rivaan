import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) {
      emit(const HomeState.loadLing());
      event.map(
        getUserList: (event) async => await _onGetUserList(event, emit),
      );
    });
  }

  _onGetUserList(event, Emitter<HomeState> emit) {}
}
