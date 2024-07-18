// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      page: (json['page'] as num?)?.toInt() ?? 0,
      per_page: (json['per_page'] as num?)?.toInt() ?? 10,
      total: (json['total'] as num?)?.toInt() ?? 0,
      total_pages: (json['total_pages'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.per_page,
      'total': instance.total,
      'total_pages': instance.total_pages,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      email: json['email'] as String? ?? '',
      first_name: json['first_name'] as String? ?? '',
      last_name: json['last_name'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      support: json['support'] == null
          ? null
          : Support.fromJson(json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'avatar': instance.avatar,
      'data': instance.data,
      'support': instance.support,
    };

_$SupportImpl _$$SupportImplFromJson(Map<String, dynamic> json) =>
    _$SupportImpl(
      url: json['url'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$SupportImplToJson(_$SupportImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'text': instance.text,
    };
