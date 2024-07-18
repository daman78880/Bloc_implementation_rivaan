import 'package:freezed_annotation/freezed_annotation.dart';
part  'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState{
  const factory HomeState.initial() = _initialStatet;
  const factory HomeState.loadLing() = _loadingState;
  const factory HomeState.listLoaded() = _listLoadedState;
}