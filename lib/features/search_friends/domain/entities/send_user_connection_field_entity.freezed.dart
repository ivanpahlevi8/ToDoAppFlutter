// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_user_connection_field_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendUserConnectionFieldEntity {
  String get userOwnerId => throw _privateConstructorUsedError;
  String get userConnectionId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendUserConnectionFieldEntityCopyWith<SendUserConnectionFieldEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendUserConnectionFieldEntityCopyWith<$Res> {
  factory $SendUserConnectionFieldEntityCopyWith(
          SendUserConnectionFieldEntity value,
          $Res Function(SendUserConnectionFieldEntity) then) =
      _$SendUserConnectionFieldEntityCopyWithImpl<$Res,
          SendUserConnectionFieldEntity>;
  @useResult
  $Res call({String userOwnerId, String userConnectionId});
}

/// @nodoc
class _$SendUserConnectionFieldEntityCopyWithImpl<$Res,
        $Val extends SendUserConnectionFieldEntity>
    implements $SendUserConnectionFieldEntityCopyWith<$Res> {
  _$SendUserConnectionFieldEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$SendUserConnectionFieldEntityImplCopyWith<$Res>
    implements $SendUserConnectionFieldEntityCopyWith<$Res> {
  factory _$$SendUserConnectionFieldEntityImplCopyWith(
          _$SendUserConnectionFieldEntityImpl value,
          $Res Function(_$SendUserConnectionFieldEntityImpl) then) =
      __$$SendUserConnectionFieldEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userOwnerId, String userConnectionId});
}

/// @nodoc
class __$$SendUserConnectionFieldEntityImplCopyWithImpl<$Res>
    extends _$SendUserConnectionFieldEntityCopyWithImpl<$Res,
        _$SendUserConnectionFieldEntityImpl>
    implements _$$SendUserConnectionFieldEntityImplCopyWith<$Res> {
  __$$SendUserConnectionFieldEntityImplCopyWithImpl(
      _$SendUserConnectionFieldEntityImpl _value,
      $Res Function(_$SendUserConnectionFieldEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userOwnerId = null,
    Object? userConnectionId = null,
  }) {
    return _then(_$SendUserConnectionFieldEntityImpl(
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

class _$SendUserConnectionFieldEntityImpl
    implements _SendUserConnectionFieldEntity {
  _$SendUserConnectionFieldEntityImpl(
      {required this.userOwnerId, required this.userConnectionId});

  @override
  final String userOwnerId;
  @override
  final String userConnectionId;

  @override
  String toString() {
    return 'SendUserConnectionFieldEntity(userOwnerId: $userOwnerId, userConnectionId: $userConnectionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendUserConnectionFieldEntityImpl &&
            (identical(other.userOwnerId, userOwnerId) ||
                other.userOwnerId == userOwnerId) &&
            (identical(other.userConnectionId, userConnectionId) ||
                other.userConnectionId == userConnectionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userOwnerId, userConnectionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendUserConnectionFieldEntityImplCopyWith<
          _$SendUserConnectionFieldEntityImpl>
      get copyWith => __$$SendUserConnectionFieldEntityImplCopyWithImpl<
          _$SendUserConnectionFieldEntityImpl>(this, _$identity);
}

abstract class _SendUserConnectionFieldEntity
    implements SendUserConnectionFieldEntity {
  factory _SendUserConnectionFieldEntity(
          {required final String userOwnerId,
          required final String userConnectionId}) =
      _$SendUserConnectionFieldEntityImpl;

  @override
  String get userOwnerId;
  @override
  String get userConnectionId;
  @override
  @JsonKey(ignore: true)
  _$$SendUserConnectionFieldEntityImplCopyWith<
          _$SendUserConnectionFieldEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
