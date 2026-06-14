// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_field_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginFieldEntity {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFieldEntityCopyWith<LoginFieldEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFieldEntityCopyWith<$Res> {
  factory $LoginFieldEntityCopyWith(
          LoginFieldEntity value, $Res Function(LoginFieldEntity) then) =
      _$LoginFieldEntityCopyWithImpl<$Res, LoginFieldEntity>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginFieldEntityCopyWithImpl<$Res, $Val extends LoginFieldEntity>
    implements $LoginFieldEntityCopyWith<$Res> {
  _$LoginFieldEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFieldEntityImplCopyWith<$Res>
    implements $LoginFieldEntityCopyWith<$Res> {
  factory _$$LoginFieldEntityImplCopyWith(_$LoginFieldEntityImpl value,
          $Res Function(_$LoginFieldEntityImpl) then) =
      __$$LoginFieldEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginFieldEntityImplCopyWithImpl<$Res>
    extends _$LoginFieldEntityCopyWithImpl<$Res, _$LoginFieldEntityImpl>
    implements _$$LoginFieldEntityImplCopyWith<$Res> {
  __$$LoginFieldEntityImplCopyWithImpl(_$LoginFieldEntityImpl _value,
      $Res Function(_$LoginFieldEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginFieldEntityImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFieldEntityImpl implements _LoginFieldEntity {
  _$LoginFieldEntityImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginFieldEntity(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFieldEntityImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFieldEntityImplCopyWith<_$LoginFieldEntityImpl> get copyWith =>
      __$$LoginFieldEntityImplCopyWithImpl<_$LoginFieldEntityImpl>(
          this, _$identity);
}

abstract class _LoginFieldEntity implements LoginFieldEntity {
  factory _LoginFieldEntity(
      {required final String username,
      required final String password}) = _$LoginFieldEntityImpl;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginFieldEntityImplCopyWith<_$LoginFieldEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
