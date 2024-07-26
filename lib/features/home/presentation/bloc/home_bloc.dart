import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/home_model.dart';
import '../../domain/usercases/home_use_case.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  var dataList = <Data>[];
  var isMaxReached = false;
  var pageN0=1;
  final HomeUseCase _homeUserCase;

  HomeBloc({required HomeUseCase homeUserCase})
      : _homeUserCase = homeUserCase,
        super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        getInitialListing: (event) async => await _onGetUserList(event, emit, false),
        getMoreListingData: (event) async =>
            !isMaxReached ? await _onGetUserList(event, emit, true) : null,
      );
    });
  }
  _onGetUserList(event, Emitter<HomeState> emit, bool fromPagination) async {
    if (fromPagination) {
      pageN0+=1;
      emit(HomeState.listLoaded(
          data: dataList,
          loadMoreError: LoadMoreError(message: 'Loading data...')));
    } else {
      pageN0=1;
      isMaxReached = false;
      dataList.clear();
      emit(const HomeState.loading());
    }
    final res = await _homeUserCase.call(pageN0);
    res.fold((l) {
      if (fromPagination) {
        emit(HomeState.listLoaded(
            data: dataList, loadMoreError: LoadMoreError(message: l.message)));
      } else {
        emit(HomeState.failure(msg: l.message));
      }
    }, (r) {

      if (fromPagination && r.data.isEmpty) {
        isMaxReached = true;
      }
      dataList = [...dataList, ...r.data];
      if(dataList.length == r.total){
        isMaxReached=true;
      }
      if (dataList.isEmpty) {
        emit(const HomeState.emptyList());
      } else {
        emit(HomeState.listLoaded(data: dataList));
      }
    });
  }
}
