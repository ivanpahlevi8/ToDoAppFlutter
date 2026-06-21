// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_user_connection_field_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendUserConnectionFieldModel _$SendUserConnectionFieldModelFromJson(
    Map<String, dynamic> json) {
  return _SendUserConnectionFieldModel.fromJson(json);
}

/// @nodoc
mixin _$SendUserConnectionFieldModel {
  @JsonKey(name: "userOwnerId")
  String get userOwnerId => throw _privateConstructorUsedError;
  @JsonKey(name: "userConnectionId")
  String get userConnectionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendUserConnectionFieldModelCopyWith<SendUserConnectionFieldModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendUserConnectionFieldModelCopyWith<$Res> {
  factory $SendUserConnectionFieldModelCopyWith(
          SendUserConnectionFieldModel value,
          $Res Function(SendUserConnectionFieldModel) then) =
      _$SendUserConnectionFieldModelCopyWithImpl<$Res,
          SendUserConnectionFieldModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "userOwnerId") String userOwnerId,
      @JsonKey(name: "userConnectionId") String userConnectionId});
}

/// @nodoc
class _$SendUserConnectionFieldModelCopyWithImpl<$Res,
        $Val extends SendUserConnectionFieldModel>
    implements $SendUserConnectionFieldModelCopyWith<$Res> {
  _$SendUserConnectionFieldModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userOwnerId = null,
    Object? userConnectionId = null,
  }) {
    return _then(_value.copyWith(
      userOwnerId: null == userOwnerId
          ? _value.userOwnerId
          : userOwnerId // ignore: cast_nullable_to_non_nullable
              as String,
      userConnectionId: null == userConnectionId
          ? _value.userConnectionId
          : userConnectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendUserConnectionFieldModelImplCopyWith<$Res>
    implements $SendUserConnectionFieldModelCopyWith<$Res> {
  factory _$$SendUserConnectionFieldModelImplCopyWith(
          _$SendUserConnectionFieldModelImpl value,
          $Res Function(_$SendUserConnectionFieldModelImpl) then) =
      __$$SendUserConnectionFieldModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userOwnerId") String userOwnerId,
      @JsonKey(name: "userConnectionId") String userConnectionId});
}

/// @nodoc
class __$$SendUserConnectionFieldModelImplCopyWithImpl<$Res>
    extends _$SendUserConnectionFieldModelCopyWithImpl<$Res,
        _$SendUserConnectionFieldModelImpl>
    implements _$$SendUserConnectionFieldModelImplCopyWith<$Res> {
  __$$SendUserConnectionFieldModelImplCopyWithImpl(
      _$SendUserConnectionFieldModelImpl _value,
      $Res Function(_$SendUserConnectionFieldModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userOwnerId = null,
    Object? userConnectionId = null,
  }) {
    return _then(_$SendUserConnectionFieldModelImpl(
      userOwnerId: null == userOwnerId
          ? _value.userOwnerId
          : userOwnerId // ignore: cast_nullable_to_non_nullable
              as String,
      userConnectionId: null == userConnectionId
          ? _value.userConnectionId
          : userConnectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendUserConnectionFieldModelImpl
    implements _SendUserConnectionFieldModel {
  _$SendUserConnectionFieldModelImpl(
      {@JsonKey(name: "userOwnerId") required this.userOwnerId,
      @JsonKey(name: "userConnectionId") required this.userConnectionId});

  factory _$SendUserConnectionFieldModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SendUserConnectionFieldModelImplFromJson(json);

  @override
  @JsonKey(name: "userOwnerId")
  final String userOwnerId;
  @override
  @JsonKey(name: "userConnectionId")
  final String userConnectionId;

  @override
  String toString() {
    return 'SendUserConnectionFieldModel(userOwnerId: $userOwnerId, userConnectionId: $userConnectionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendUserConnectionFieldModelImpl &&
            (identical(other.userOwnerId, userOwnerId) ||
                other.userOwnerId == userOwnerId) &&
            (identical(other.userConnectionId, userConnectionId) ||
                other.userConnectionId == userConnectionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userOwnerId, userConnectionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendUserConnectionFieldModelImplCopyWith<
          _$SendUserConnectionFieldModelImpl>
      get copyWith => __$$SendUserConnectionFieldModelImplCopyWithImpl<
          _$SendUserConnectionFieldModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendUserConnectionFieldModelImplToJson(
      this,
    );
  }
}

abstract class _SendUserConnectionFieldModel
    implements SendUserConnectionFieldModel {
  factory _SendUserConnectionFieldModel(
          {@JsonKey(name: "userOwnerId") required final String userOwnerId,
          @JsonKey(name: "userConnectionId")
          required final String userConnectionId}) =
      _$SendUserConnectionFieldModelImpl;

  factory _SendUserConnectionFieldModel.fromJson(Map<String, dynamic> json) =
      _$SendUserConnectionFieldModelImpl.fromJson;

  @override
  @JsonKey(name: "userOwnerId")
  String get userOwnerId;
  @override
  @JsonKey(name: "userConnectionId")
  String get userConnectionId;
  @override
  @JsonKey(ignore: true)
  _$$SendUserConnectionFieldModelImplCopyWith<
          _$SendUserConnectionFieldModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
