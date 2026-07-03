// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConnectionModel _$ConnectionModelFromJson(Map<String, dynamic> json) {
  return _ConnectionModel.fromJson(json);
}

/// @nodoc
mixin _$ConnectionModel {
  @JsonKey(name: "connectionId")
  int get connectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "userOwnerId")
  String get userOwnerId => throw _privateConstructorUsedError;
  @JsonKey(name: "userConnectionId")
  String get userConnectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "connectionStatus")
  String get connectionStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectionModelCopyWith<ConnectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionModelCopyWith<$Res> {
  factory $ConnectionModelCopyWith(
          ConnectionModel value, $Res Function(ConnectionModel) then) =
      _$ConnectionModelCopyWithImpl<$Res, ConnectionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "connectionId") int connectionId,
      @JsonKey(name: "userOwnerId") String userOwnerId,
      @JsonKey(name: "userConnectionId") String userConnectionId,
      @JsonKey(name: "connectionStatus") String connectionStatus,
      @JsonKey(name: "createdAt") String createdAt});
}

/// @nodoc
class _$ConnectionModelCopyWithImpl<$Res, $Val extends ConnectionModel>
    implements $ConnectionModelCopyWith<$Res> {
  _$ConnectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionId = null,
    Object? userOwnerId = null,
    Object? userConnectionId = null,
    Object? connectionStatus = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      connectionId: null == connectionId
          ? _value.connectionId
          : connectionId // ignore: cast_nullable_to_non_nullable
              as int,
      userOwnerId: null == userOwnerId
          ? _value.userOwnerId
          : userOwnerId // ignore: cast_nullable_to_non_nullable
              as String,
      userConnectionId: null == userConnectionId
          ? _value.userConnectionId
          : userConnectionId // ignore: cast_nullable_to_non_nullable
              as String,
      connectionStatus: null == connectionStatus
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionModelImplCopyWith<$Res>
    implements $ConnectionModelCopyWith<$Res> {
  factory _$$ConnectionModelImplCopyWith(_$ConnectionModelImpl value,
          $Res Function(_$ConnectionModelImpl) then) =
      __$$ConnectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "connectionId") int connectionId,
      @JsonKey(name: "userOwnerId") String userOwnerId,
      @JsonKey(name: "userConnectionId") String userConnectionId,
      @JsonKey(name: "connectionStatus") String connectionStatus,
      @JsonKey(name: "createdAt") String createdAt});
}

/// @nodoc
class __$$ConnectionModelImplCopyWithImpl<$Res>
    extends _$ConnectionModelCopyWithImpl<$Res, _$ConnectionModelImpl>
    implements _$$ConnectionModelImplCopyWith<$Res> {
  __$$ConnectionModelImplCopyWithImpl(
      _$ConnectionModelImpl _value, $Res Function(_$ConnectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionId = null,
    Object? userOwnerId = null,
    Object? userConnectionId = null,
    Object? connectionStatus = null,
    Object? createdAt = null,
  }) {
    return _then(_$ConnectionModelImpl(
      connectionId: null == connectionId
          ? _value.connectionId
          : connectionId // ignore: cast_nullable_to_non_nullable
              as int,
      userOwnerId: null == userOwnerId
          ? _value.userOwnerId
          : userOwnerId // ignore: cast_nullable_to_non_nullable
              as String,
      userConnectionId: null == userConnectionId
          ? _value.userConnectionId
          : userConnectionId // ignore: cast_nullable_to_non_nullable
              as String,
      connectionStatus: null == connectionStatus
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
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
class _$ConnectionModelImpl implements _ConnectionModel {
  _$ConnectionModelImpl(
      {@JsonKey(name: "connectionId") required this.connectionId,
      @JsonKey(name: "userOwnerId") required this.userOwnerId,
      @JsonKey(name: "userConnectionId") required this.userConnectionId,
      @JsonKey(name: "connectionStatus") required this.connectionStatus,
      @JsonKey(name: "createdAt") required this.createdAt});

  factory _$ConnectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectionModelImplFromJson(json);

  @override
  @JsonKey(name: "connectionId")
  final int connectionId;
  @override
  @JsonKey(name: "userOwnerId")
  final String userOwnerId;
  @override
  @JsonKey(name: "userConnectionId")
  final String userConnectionId;
  @override
  @JsonKey(name: "connectionStatus")
  final String connectionStatus;
  @override
  @JsonKey(name: "createdAt")
  final String createdAt;

  @override
  String toString() {
    return 'ConnectionModel(connectionId: $connectionId, userOwnerId: $userOwnerId, userConnectionId: $userConnectionId, connectionStatus: $connectionStatus, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionModelImpl &&
            (identical(other.connectionId, connectionId) ||
                other.connectionId == connectionId) &&
            (identical(other.userOwnerId, userOwnerId) ||
                other.userOwnerId == userOwnerId) &&
            (identical(other.userConnectionId, userConnectionId) ||
                other.userConnectionId == userConnectionId) &&
            (identical(other.connectionStatus, connectionStatus) ||
                other.connectionStatus == connectionStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, connectionId, userOwnerId,
      userConnectionId, connectionStatus, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionModelImplCopyWith<_$ConnectionModelImpl> get copyWith =>
      __$$ConnectionModelImplCopyWithImpl<_$ConnectionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectionModelImplToJson(
      this,
    );
  }
}

abstract class _ConnectionModel implements ConnectionModel {
  factory _ConnectionModel(
      {@JsonKey(name: "connectionId") required final int connectionId,
      @JsonKey(name: "userOwnerId") required final String userOwnerId,
      @JsonKey(name: "userConnectionId") required final String userConnectionId,
      @JsonKey(name: "connectionStatus") required final String connectionStatus,
      @JsonKey(name: "createdAt")
      required final String createdAt}) = _$ConnectionModelImpl;

  factory _ConnectionModel.fromJson(Map<String, dynamic> json) =
      _$ConnectionModelImpl.fromJson;

  @override
  @JsonKey(name: "connectionId")
  int get connectionId;
  @override
  @JsonKey(name: "userOwnerId")
  String get userOwnerId;
  @override
  @JsonKey(name: "userConnectionId")
  String get userConnectionId;
  @override
  @JsonKey(name: "connectionStatus")
  String get connectionStatus;
  @override
  @JsonKey(name: "createdAt")
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionModelImplCopyWith<_$ConnectionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
