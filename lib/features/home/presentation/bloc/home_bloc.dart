import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usercases/home_use_case.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase _homeUserCase;

  HomeBloc({required HomeUseCase homeUserCase})
      : _homeUserCase = homeUserCase,
        super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      emit(const HomeState.loading());
      await event.map(
        getUserList: (event) async => await _onGetUserList(event, emit,false),
        getUserListByPaginate: (event) async => await _onGetUserList(event, emit,true),
      );
    });
  }

  _onGetUserList(event, Emitter<HomeState> emit,bool fromPagination) async {
    final res = await _homeUserCase.call(event.pageNo);
    res.fold((l) {
      emit(HomeState.failure(msg: l.message));
    }, (r) {
      if(fromPagination){
        emit(HomeState.onPaginateLoad(data: r.data));
      }else {
        emit(HomeState.listLoaded(data: r.data));
      }
    });
  }
}
