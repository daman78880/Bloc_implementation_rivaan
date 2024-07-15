// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      token: json['token'] as String? ?? '',
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'id': instance.id,
    };
