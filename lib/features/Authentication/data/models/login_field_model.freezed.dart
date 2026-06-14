// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_field_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginFieldModel _$LoginFieldModelFromJson(Map<String, dynamic> json) {
  return _LoginFieldModel.fromJson(json);
}

/// @nodoc
mixin _$LoginFieldModel {
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginFieldModelCopyWith<LoginFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFieldModelCopyWith<$Res> {
  factory $LoginFieldModelCopyWith(
          LoginFieldModel value, $Res Function(LoginFieldModel) then) =
      _$LoginFieldModelCopyWithImpl<$Res, LoginFieldModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") String username,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class _$LoginFieldModelCopyWithImpl<$Res, $Val extends LoginFieldModel>
    implements $LoginFieldModelCopyWith<$Res> {
  _$LoginFieldModelCopyWithImpl(this._value, this._then);

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
abstract class _$$LoginFieldModelImplCopyWith<$Res>
    implements $LoginFieldModelCopyWith<$Res> {
  factory _$$LoginFieldModelImplCopyWith(_$LoginFieldModelImpl value,
          $Res Function(_$LoginFieldModelImpl) then) =
      __$$LoginFieldModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") String username,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class __$$LoginFieldModelImplCopyWithImpl<$Res>
    extends _$LoginFieldModelCopyWithImpl<$Res, _$LoginFieldModelImpl>
    implements _$$LoginFieldModelImplCopyWith<$Res> {
  __$$LoginFieldModelImplCopyWithImpl(
      _$LoginFieldModelImpl _value, $Res Function(_$LoginFieldModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginFieldModelImpl(
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
@JsonSerializable()
class _$LoginFieldModelImpl implements _LoginFieldModel {
  _$LoginFieldModelImpl(
      {@JsonKey(name: "username") required this.username,
      @JsonKey(name: "password") required this.password});

  factory _$LoginFieldModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginFieldModelImplFromJson(json);

  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "password")
  final String password;

  @override
  String toString() {
    return 'LoginFieldModel(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFieldModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFieldModelImplCopyWith<_$LoginFieldModelImpl> get copyWith =>
      __$$LoginFieldModelImplCopyWithImpl<_$LoginFieldModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginFieldModelImplToJson(
      this,
    );
  }
}

abstract class _LoginFieldModel implements LoginFieldModel {
  factory _LoginFieldModel(
          {@JsonKey(name: "username") required final String username,
          @JsonKey(name: "password") required final String password}) =
      _$LoginFieldModelImpl;

  factory _LoginFieldModel.fromJson(Map<String, dynamic> json) =
      _$LoginFieldModelImpl.fromJson;

  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "password")
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginFieldModelImplCopyWith<_$LoginFieldModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
