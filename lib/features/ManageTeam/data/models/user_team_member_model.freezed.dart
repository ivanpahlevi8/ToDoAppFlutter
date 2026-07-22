// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_team_member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTeamMemberModel _$UserTeamMemberModelFromJson(Map<String, dynamic> json) {
  return _UserTeamMemberModel.fromJson(json);
}

/// @nodoc
mixin _$UserTeamMemberModel {
  @JsonKey(name: "id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTeamMemberModelCopyWith<UserTeamMemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTeamMemberModelCopyWith<$Res> {
  factory $UserTeamMemberModelCopyWith(
          UserTeamMemberModel value, $Res Function(UserTeamMemberModel) then) =
      _$UserTeamMemberModelCopyWithImpl<$Res, UserTeamMemberModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String userId,
      @JsonKey(name: "email") String userEmail,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "lastName") String lastName,
      @JsonKey(name: "createdAt") String createdAt});
}

/// @nodoc
class _$UserTeamMemberModelCopyWithImpl<$Res, $Val extends UserTeamMemberModel>
    implements $UserTeamMemberModelCopyWith<$Res> {
  _$UserTeamMemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userEmail = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UserTeamMemberModelImplCopyWith<$Res>
    implements $UserTeamMemberModelCopyWith<$Res> {
  factory _$$UserTeamMemberModelImplCopyWith(_$UserTeamMemberModelImpl value,
          $Res Function(_$UserTeamMemberModelImpl) then) =
      __$$UserTeamMemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String userId,
      @JsonKey(name: "email") String userEmail,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "lastName") String lastName,
      @JsonKey(name: "createdAt") String createdAt});
}

/// @nodoc
class __$$UserTeamMemberModelImplCopyWithImpl<$Res>
    extends _$UserTeamMemberModelCopyWithImpl<$Res, _$UserTeamMemberModelImpl>
    implements _$$UserTeamMemberModelImplCopyWith<$Res> {
  __$$UserTeamMemberModelImplCopyWithImpl(_$UserTeamMemberModelImpl _value,
      $Res Function(_$UserTeamMemberModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userEmail = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? createdAt = null,
  }) {
    return _then(_$UserTeamMemberModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$UserTeamMemberModelImpl implements _UserTeamMemberModel {
  _$UserTeamMemberModelImpl(
      {@JsonKey(name: "id") required this.userId,
      @JsonKey(name: "email") required this.userEmail,
      @JsonKey(name: "firstName") required this.firstName,
      @JsonKey(name: "lastName") required this.lastName,
      @JsonKey(name: "createdAt") required this.createdAt});

  factory _$UserTeamMemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTeamMemberModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String userId;
  @override
  @JsonKey(name: "email")
  final String userEmail;
  @override
  @JsonKey(name: "firstName")
  final String firstName;
  @override
  @JsonKey(name: "lastName")
  final String lastName;
  @override
  @JsonKey(name: "createdAt")
  final String createdAt;

  @override
  String toString() {
    return 'UserTeamMemberModel(userId: $userId, userEmail: $userEmail, firstName: $firstName, lastName: $lastName, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTeamMemberModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, userEmail, firstName, lastName, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTeamMemberModelImplCopyWith<_$UserTeamMemberModelImpl> get copyWith =>
      __$$UserTeamMemberModelImplCopyWithImpl<_$UserTeamMemberModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTeamMemberModelImplToJson(
      this,
    );
  }
}

abstract class _UserTeamMemberModel implements UserTeamMemberModel {
  factory _UserTeamMemberModel(
          {@JsonKey(name: "id") required final String userId,
          @JsonKey(name: "email") required final String userEmail,
          @JsonKey(name: "firstName") required final String firstName,
          @JsonKey(name: "lastName") required final String lastName,
          @JsonKey(name: "createdAt") required final String createdAt}) =
      _$UserTeamMemberModelImpl;

  factory _UserTeamMemberModel.fromJson(Map<String, dynamic> json) =
      _$UserTeamMemberModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get userId;
  @override
  @JsonKey(name: "email")
  String get userEmail;
  @override
  @JsonKey(name: "firstName")
  String get firstName;
  @override
  @JsonKey(name: "lastName")
  String get lastName;
  @override
  @JsonKey(name: "createdAt")
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$UserTeamMemberModelImplCopyWith<_$UserTeamMemberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
