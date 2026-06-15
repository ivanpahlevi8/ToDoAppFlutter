// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_field_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterFieldModelImpl _$$RegisterFieldModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterFieldModelImpl(
      username: json['userName'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$$RegisterFieldModelImplToJson(
        _$RegisterFieldModelImpl instance) =>
    <String, dynamic>{
      'userName': instance.username,
      'password': instance.password,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
