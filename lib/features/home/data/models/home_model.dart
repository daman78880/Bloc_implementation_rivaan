import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';

part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  factory HomeModel({
    @Default(0) int page,
    @Default(10) int per_page,
    @Default(0) int total,
    @Default(0) int total_pages,
    @Default([]) List<Data> data,
    Support? support
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, Object?> json) =>
      _$HomeModelFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    @Default(-1) int id,
    @Default('') String email,
    @Default('') String first_name,
    @Default('') String last_name,
    @Default('') String avatar,
    @Default([])  List<Data>  data,
    Support? support,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

@freezed
class Support with _$Support {
  factory Support({
    required String url,
    required String text,
  }) = _Support;

  factory Support.fromJson(Map<String, Object?> json) =>
      _$SupportFromJson(json);
}
