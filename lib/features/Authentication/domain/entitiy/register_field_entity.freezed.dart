// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_field_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterFieldEntity {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFieldEntityCopyWith<RegisterFieldEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFieldEntityCopyWith<$Res> {
  factory $RegisterFieldEntityCopyWith(
          RegisterFieldEntity value, $Res Function(RegisterFieldEntity) then) =
      _$RegisterFieldEntityCopyWithImpl<$Res, RegisterFieldEntity>;
  @useResult
  $Res call(
      {String username,
      String password,
      String email,
      String phoneNumber,
      String firstName,
      String lastName});
}

/// @nodoc
class _$RegisterFieldEntityCopyWithImpl<$Res, $Val extends RegisterFieldEntity>
    implements $RegisterFieldEntityCopyWith<$Res> {
  _$RegisterFieldEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterFieldEntityImplCopyWith<$Res>
    implements $RegisterFieldEntityCopyWith<$Res> {
  factory _$$RegisterFieldEntityImplCopyWith(_$RegisterFieldEntityImpl value,
          $Res Function(_$RegisterFieldEntityImpl) then) =
      __$$RegisterFieldEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String password,
      String email,
      String phoneNumber,
      String firstName,
      String lastName});
}

/// @nodoc
class __$$RegisterFieldEntityImplCopyWithImpl<$Res>
    extends _$RegisterFieldEntityCopyWithImpl<$Res, _$RegisterFieldEntityImpl>
    implements _$$RegisterFieldEntityImplCopyWith<$Res> {
  __$$RegisterFieldEntityImplCopyWithImpl(_$RegisterFieldEntityImpl _value,
      $Res Function(_$RegisterFieldEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$RegisterFieldEntityImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterFieldEntityImpl implements _RegisterFieldEntity {
  _$RegisterFieldEntityImpl(
      {required this.username,
      required this.password,
      required this.email,
      required this.phoneNumber,
      required this.firstName,
      required this.lastName});

  @override
  final String username;
  @override
  final String password;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'RegisterFieldEntity(username: $username, password: $password, email: $email, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFieldEntityImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, username, password, email, phoneNumber, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFieldEntityImplCopyWith<_$RegisterFieldEntityImpl> get copyWith =>
      __$$RegisterFieldEntityImplCopyWithImpl<_$RegisterFieldEntityImpl>(
          this, _$identity);
}

abstract class _RegisterFieldEntity implements RegisterFieldEntity {
  factory _RegisterFieldEntity(
      {required final String username,
      required final String password,
      required final String email,
      required final String phoneNumber,
      required final String firstName,
      required final String lastName}) = _$RegisterFieldEntityImpl;

  @override
  String get username;
  @override
  String get password;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$RegisterFieldEntityImplCopyWith<_$RegisterFieldEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
