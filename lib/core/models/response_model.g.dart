// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseModelImpl<T> _$$ResponseModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ResponseModelImpl<T>(
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      result: _$nullableGenericFromJson(json['result'], fromJsonT),
    );

Map<String, dynamic> _$$ResponseModelImplToJson<T>(
  _$ResponseModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'result': _$nullableGenericToJson(instance.result, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
