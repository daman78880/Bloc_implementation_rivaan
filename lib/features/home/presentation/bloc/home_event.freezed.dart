// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  int get pageNo => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNo) getUserList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageNo)? getUserList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageNo)? getUserList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userListEvent value) getUserList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userListEvent value)? getUserList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userListEvent value)? getUserList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({int pageNo});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = null,
  }) {
    return _then(_value.copyWith(
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$userListEventImplCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$userListEventImplCopyWith(
          _$userListEventImpl value, $Res Function(_$userListEventImpl) then) =
      __$$userListEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageNo});
}

/// @nodoc
class __$$userListEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$userListEventImpl>
    implements _$$userListEventImplCopyWith<$Res> {
  __$$userListEventImplCopyWithImpl(
      _$userListEventImpl _value, $Res Function(_$userListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = null,
  }) {
    return _then(_$userListEventImpl(
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$userListEventImpl implements _userListEvent {
  const _$userListEventImpl({required this.pageNo});

  @override
  final int pageNo;

  @override
  String toString() {
    return 'HomeEvent.getUserList(pageNo: $pageNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userListEventImpl &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userListEventImplCopyWith<_$userListEventImpl> get copyWith =>
      __$$userListEventImplCopyWithImpl<_$userListEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNo) getUserList,
  }) {
    return getUserList(pageNo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageNo)? getUserList,
  }) {
    return getUserList?.call(pageNo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageNo)? getUserList,
    required TResult orElse(),
  }) {
    if (getUserList != null) {
      return getUserList(pageNo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userListEvent value) getUserList,
  }) {
    return getUserList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userListEvent value)? getUserList,
  }) {
    return getUserList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userListEvent value)? getUserList,
    required TResult orElse(),
  }) {
    if (getUserList != null) {
      return getUserList(this);
    }
    return orElse();
  }
}

abstract class _userListEvent implements HomeEvent {
  const factory _userListEvent({required final int pageNo}) =
      _$userListEventImpl;

  @override
  int get pageNo;
  @override
  @JsonKey(ignore: true)
  _$$userListEventImplCopyWith<_$userListEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
