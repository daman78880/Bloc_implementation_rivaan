import 'package:bloc_implementation_rivaan/features/home/data/models/home_model.dart' as home_model;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/home_model.dart';
part  'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState{
  const factory HomeState.initial() = _initialStatet;
  const factory HomeState.loading() = _loadingState;
  const factory HomeState.failure({required String msg}) = _failureState;
  const factory HomeState.listLoaded({required List<home_model.Data> data}) = _listLoadedState;
}