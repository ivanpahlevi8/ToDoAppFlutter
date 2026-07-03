// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionEntity {
  int get connectionId => throw _privateConstructorUsedError;
  String get userOwnerId => throw _privateConstructorUsedError;
  String get userConnectionId => throw _privateConstructorUsedError;
  String get connectionStatus => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionEntityCopyWith<ConnectionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionEntityCopyWith<$Res> {
  factory $ConnectionEntityCopyWith(
          ConnectionEntity value, $Res Function(ConnectionEntity) then) =
      _$ConnectionEntityCopyWithImpl<$Res, ConnectionEntity>;
  @useResult
  $Res call(
      {int connectionId,
      String userOwnerId,
      String userConnectionId,
      String connectionStatus,
      String createdAt});
}

/// @nodoc
class _$ConnectionEntityCopyWithImpl<$Res, $Val extends ConnectionEntity>
    implements $ConnectionEntityCopyWith<$Res> {
  _$ConnectionEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$ConnectionEntityImplCopyWith<$Res>
    implements $ConnectionEntityCopyWith<$Res> {
  factory _$$ConnectionEntityImplCopyWith(_$ConnectionEntityImpl value,
          $Res Function(_$ConnectionEntityImpl) then) =
      __$$ConnectionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int connectionId,
      String userOwnerId,
      String userConnectionId,
      String connectionStatus,
      String createdAt});
}

/// @nodoc
class __$$ConnectionEntityImplCopyWithImpl<$Res>
    extends _$ConnectionEntityCopyWithImpl<$Res, _$ConnectionEntityImpl>
    implements _$$ConnectionEntityImplCopyWith<$Res> {
  __$$ConnectionEntityImplCopyWithImpl(_$ConnectionEntityImpl _value,
      $Res Function(_$ConnectionEntityImpl) _then)
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
    return _then(_$ConnectionEntityImpl(
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

class _$ConnectionEntityImpl implements _ConnectionEntity {
  _$ConnectionEntityImpl(
      {required this.connectionId,
      required this.userOwnerId,
      required this.userConnectionId,
      required this.connectionStatus,
      required this.createdAt});

  @override
  final int connectionId;
  @override
  final String userOwnerId;
  @override
  final String userConnectionId;
  @override
  final String connectionStatus;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'ConnectionEntity(connectionId: $connectionId, userOwnerId: $userOwnerId, userConnectionId: $userConnectionId, connectionStatus: $connectionStatus, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionEntityImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, connectionId, userOwnerId,
      userConnectionId, connectionStatus, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionEntityImplCopyWith<_$ConnectionEntityImpl> get copyWith =>
      __$$ConnectionEntityImplCopyWithImpl<_$ConnectionEntityImpl>(
          this, _$identity);
}

abstract class _ConnectionEntity implements ConnectionEntity {
  factory _ConnectionEntity(
      {required final int connectionId,
      required final String userOwnerId,
      required final String userConnectionId,
      required final String connectionStatus,
      required final String createdAt}) = _$ConnectionEntityImpl;

  @override
  int get connectionId;
  @override
  String get userOwnerId;
  @override
  String get userConnectionId;
  @override
  String get connectionStatus;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionEntityImplCopyWith<_$ConnectionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
