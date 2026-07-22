// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_team_member_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserTeamMemberEntity {
  String get userId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserTeamMemberEntityCopyWith<UserTeamMemberEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTeamMemberEntityCopyWith<$Res> {
  factory $UserTeamMemberEntityCopyWith(UserTeamMemberEntity value,
          $Res Function(UserTeamMemberEntity) then) =
      _$UserTeamMemberEntityCopyWithImpl<$Res, UserTeamMemberEntity>;
  @useResult
  $Res call(
      {String userId,
      String email,
      String firstName,
      String lastName,
      String createdAt});
}

/// @nodoc
class _$UserTeamMemberEntityCopyWithImpl<$Res,
        $Val extends UserTeamMemberEntity>
    implements $UserTeamMemberEntityCopyWith<$Res> {
  _$UserTeamMemberEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserTeamMemberEntityImplCopyWith<$Res>
    implements $UserTeamMemberEntityCopyWith<$Res> {
  factory _$$UserTeamMemberEntityImplCopyWith(_$UserTeamMemberEntityImpl value,
          $Res Function(_$UserTeamMemberEntityImpl) then) =
      __$$UserTeamMemberEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String email,
      String firstName,
      String lastName,
      String createdAt});
}

/// @nodoc
class __$$UserTeamMemberEntityImplCopyWithImpl<$Res>
    extends _$UserTeamMemberEntityCopyWithImpl<$Res, _$UserTeamMemberEntityImpl>
    implements _$$UserTeamMemberEntityImplCopyWith<$Res> {
  __$$UserTeamMemberEntityImplCopyWithImpl(_$UserTeamMemberEntityImpl _value,
      $Res Function(_$UserTeamMemberEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? createdAt = null,
  }) {
    return _then(_$UserTeamMemberEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserTeamMemberEntityImpl implements _UserTeamMemberEntity {
  _$UserTeamMemberEntityImpl(
      {required this.userId,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.createdAt});

  @override
  final String userId;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'UserTeamMemberEntity(userId: $userId, email: $email, firstName: $firstName, lastName: $lastName, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTeamMemberEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, email, firstName, lastName, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTeamMemberEntityImplCopyWith<_$UserTeamMemberEntityImpl>
      get copyWith =>
          __$$UserTeamMemberEntityImplCopyWithImpl<_$UserTeamMemberEntityImpl>(
              this, _$identity);
}

abstract class _UserTeamMemberEntity implements UserTeamMemberEntity {
  factory _UserTeamMemberEntity(
      {required final String userId,
      required final String email,
      required final String firstName,
      required final String lastName,
      required final String createdAt}) = _$UserTeamMemberEntityImpl;

  @override
  String get userId;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$UserTeamMemberEntityImplCopyWith<_$UserTeamMemberEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
