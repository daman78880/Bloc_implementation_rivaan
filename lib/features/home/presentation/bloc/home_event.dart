import 'package:freezed_annotation/freezed_annotation.dart';
part  'home_event.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent{
  const factory HomeEvent.getInitialListing() = _getInitialListingEvent;
  const factory HomeEvent.getMoreListingData() = _getMoreListingDataEvent;
}