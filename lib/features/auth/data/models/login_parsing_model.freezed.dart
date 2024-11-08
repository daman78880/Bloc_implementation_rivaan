// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_parsing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginParsingModel _$LoginParsingModelFromJson(Map<String, dynamic> json) {
  return _LoginParsingModel.fromJson(json);
}

/// @nodoc
mixin _$LoginParsingModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginParsingModelCopyWith<LoginParsingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginParsingModelCopyWith<$Res> {
  factory $LoginParsingModelCopyWith(
          LoginParsingModel value, $Res Function(LoginParsingModel) then) =
      _$LoginParsingModelCopyWithImpl<$Res, LoginParsingModel>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginParsingModelCopyWithImpl<$Res, $Val extends LoginParsingModel>
    implements $LoginParsingModelCopyWith<$Res> {
  _$LoginParsingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginParsingModelImplCopyWith<$Res>
    implements $LoginParsingModelCopyWith<$Res> {
  factory _$$LoginParsingModelImplCopyWith(_$LoginParsingModelImpl value,
          $Res Function(_$LoginParsingModelImpl) then) =
      __$$LoginParsingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginParsingModelImplCopyWithImpl<$Res>
    extends _$LoginParsingModelCopyWithImpl<$Res, _$LoginParsingModelImpl>
    implements _$$LoginParsingModelImplCopyWith<$Res> {
  __$$LoginParsingModelImplCopyWithImpl(_$LoginParsingModelImpl _value,
      $Res Function(_$LoginParsingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginParsingModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginParsingModelImpl implements _LoginParsingModel {
  _$LoginParsingModelImpl({required this.email, required this.password});

  factory _$LoginParsingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginParsingModelImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginParsingModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginParsingModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginParsingModelImplCopyWith<_$LoginParsingModelImpl> get copyWith =>
      __$$LoginParsingModelImplCopyWithImpl<_$LoginParsingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginParsingModelImplToJson(
      this,
    );
  }
}

abstract class _LoginParsingModel implements LoginParsingModel {
  factory _LoginParsingModel(
      {required final String email,
      required final String password}) = _$LoginParsingModelImpl;

  factory _LoginParsingModel.fromJson(Map<String, dynamic> json) =
      _$LoginParsingModelImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginParsingModelImplCopyWith<_$LoginParsingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
