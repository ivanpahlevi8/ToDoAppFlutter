// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_field_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterFieldModel _$RegisterFieldModelFromJson(Map<String, dynamic> json) {
  return _RegisterFieldModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterFieldModel {
  @JsonKey(name: "userName")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phoneNumber")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterFieldModelCopyWith<RegisterFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFieldModelCopyWith<$Res> {
  factory $RegisterFieldModelCopyWith(
          RegisterFieldModel value, $Res Function(RegisterFieldModel) then) =
      _$RegisterFieldModelCopyWithImpl<$Res, RegisterFieldModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "userName") String username,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "phoneNumber") String phoneNumber,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "lastName") String lastName});
}

/// @nodoc
class _$RegisterFieldModelCopyWithImpl<$Res, $Val extends RegisterFieldModel>
    implements $RegisterFieldModelCopyWith<$Res> {
  _$RegisterFieldModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RegisterFieldModelImplCopyWith<$Res>
    implements $RegisterFieldModelCopyWith<$Res> {
  factory _$$RegisterFieldModelImplCopyWith(_$RegisterFieldModelImpl value,
          $Res Function(_$RegisterFieldModelImpl) then) =
      __$$RegisterFieldModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userName") String username,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "phoneNumber") String phoneNumber,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "lastName") String lastName});
}

/// @nodoc
class __$$RegisterFieldModelImplCopyWithImpl<$Res>
    extends _$RegisterFieldModelCopyWithImpl<$Res, _$RegisterFieldModelImpl>
    implements _$$RegisterFieldModelImplCopyWith<$Res> {
  __$$RegisterFieldModelImplCopyWithImpl(_$RegisterFieldModelImpl _value,
      $Res Function(_$RegisterFieldModelImpl) _then)
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
    return _then(_$RegisterFieldModelImpl(
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
@JsonSerializable()
class _$RegisterFieldModelImpl implements _RegisterFieldModel {
  _$RegisterFieldModelImpl(
      {@JsonKey(name: "userName") required this.username,
      @JsonKey(name: "password") required this.password,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "phoneNumber") required this.phoneNumber,
      @JsonKey(name: "firstName") required this.firstName,
      @JsonKey(name: "lastName") required this.lastName});

  factory _$RegisterFieldModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterFieldModelImplFromJson(json);

  @override
  @JsonKey(name: "userName")
  final String username;
  @override
  @JsonKey(name: "password")
  final String password;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "phoneNumber")
  final String phoneNumber;
  @override
  @JsonKey(name: "firstName")
  final String firstName;
  @override
  @JsonKey(name: "lastName")
  final String lastName;

  @override
  String toString() {
    return 'RegisterFieldModel(username: $username, password: $password, email: $email, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFieldModelImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, username, password, email, phoneNumber, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFieldModelImplCopyWith<_$RegisterFieldModelImpl> get copyWith =>
      __$$RegisterFieldModelImplCopyWithImpl<_$RegisterFieldModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterFieldModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterFieldModel implements RegisterFieldModel {
  factory _RegisterFieldModel(
          {@JsonKey(name: "userName") required final String username,
          @JsonKey(name: "password") required final String password,
          @JsonKey(name: "email") required final String email,
          @JsonKey(name: "phoneNumber") required final String phoneNumber,
          @JsonKey(name: "firstName") required final String firstName,
          @JsonKey(name: "lastName") required final String lastName}) =
      _$RegisterFieldModelImpl;

  factory _RegisterFieldModel.fromJson(Map<String, dynamic> json) =
      _$RegisterFieldModelImpl.fromJson;

  @override
  @JsonKey(name: "userName")
  String get username;
  @override
  @JsonKey(name: "password")
  String get password;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "phoneNumber")
  String get phoneNumber;
  @override
  @JsonKey(name: "firstName")
  String get firstName;
  @override
  @JsonKey(name: "lastName")
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$RegisterFieldModelImplCopyWith<_$RegisterFieldModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
