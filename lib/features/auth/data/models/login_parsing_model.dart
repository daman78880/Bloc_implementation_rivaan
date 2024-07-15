import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_parsing_model.freezed.dart';
part 'login_parsing_model.g.dart';
@freezed
class LoginParsingModel with _$LoginParsingModel{

  factory LoginParsingModel({required String email,required String password}) = _LoginParsingModel;

  factory LoginParsingModel.fromJson(Map<String, Object?> json) => _$LoginParsingModelFromJson(json);
}