// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      createdAt: json['createdAt'] as String,
      userId: json['id'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'createdAt': instance.createdAt,
      'id': instance.userId,
      'userName': instance.userName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };
