// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_view_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionViewEntity {
  ConnectionEntity get connectionEntity => throw _privateConstructorUsedError;
  UserModel get userModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionViewEntityCopyWith<ConnectionViewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionViewEntityCopyWith<$Res> {
  factory $ConnectionViewEntityCopyWith(ConnectionViewEntity value,
          $Res Function(ConnectionViewEntity) then) =
      _$ConnectionViewEntityCopyWithImpl<$Res, ConnectionViewEntity>;
  @useResult
  $Res call({ConnectionEntity connectionEntity, UserModel userModel});

  $ConnectionEntityCopyWith<$Res> get connectionEntity;
  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$ConnectionViewEntityCopyWithImpl<$Res,
        $Val extends ConnectionViewEntity>
    implements $ConnectionViewEntityCopyWith<$Res> {
  _$ConnectionViewEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionEntity = null,
    Object? userModel = null,
  }) {
    return _then(_value.copyWith(
      connectionEntity: null == connectionEntity
          ? _value.connectionEntity
          : connectionEntity // ignore: cast_nullable_to_non_nullable
              as ConnectionEntity,
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConnectionEntityCopyWith<$Res> get connectionEntity {
    return $ConnectionEntityCopyWith<$Res>(_value.connectionEntity, (value) {
      return _then(_value.copyWith(connectionEntity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConnectionViewEntityImplCopyWith<$Res>
    implements $ConnectionViewEntityCopyWith<$Res> {
  factory _$$ConnectionViewEntityImplCopyWith(_$ConnectionViewEntityImpl value,
          $Res Function(_$ConnectionViewEntityImpl) then) =
      __$$ConnectionViewEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectionEntity connectionEntity, UserModel userModel});

  @override
  $ConnectionEntityCopyWith<$Res> get connectionEntity;
  @override
  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$ConnectionViewEntityImplCopyWithImpl<$Res>
    extends _$ConnectionViewEntityCopyWithImpl<$Res, _$ConnectionViewEntityImpl>
    implements _$$ConnectionViewEntityImplCopyWith<$Res> {
  __$$ConnectionViewEntityImplCopyWithImpl(_$ConnectionViewEntityImpl _value,
      $Res Function(_$ConnectionViewEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionEntity = null,
    Object? userModel = null,
  }) {
    return _then(_$ConnectionViewEntityImpl(
      connectionEntity: null == connectionEntity
          ? _value.connectionEntity
          : connectionEntity // ignore: cast_nullable_to_non_nullable
              as ConnectionEntity,
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$ConnectionViewEntityImpl implements _ConnectionViewEntity {
  _$ConnectionViewEntityImpl(
      {required this.connectionEntity, required this.userModel});

  @override
  final ConnectionEntity connectionEntity;
  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'ConnectionViewEntity(connectionEntity: $connectionEntity, userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionViewEntityImpl &&
            (identical(other.connectionEntity, connectionEntity) ||
                other.connectionEntity == connectionEntity) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectionEntity, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionViewEntityImplCopyWith<_$ConnectionViewEntityImpl>
      get copyWith =>
          __$$ConnectionViewEntityImplCopyWithImpl<_$ConnectionViewEntityImpl>(
              this, _$identity);
}

abstract class _ConnectionViewEntity implements ConnectionViewEntity {
  factory _ConnectionViewEntity(
      {required final ConnectionEntity connectionEntity,
      required final UserModel userModel}) = _$ConnectionViewEntityImpl;

  @override
  ConnectionEntity get connectionEntity;
  @override
  UserModel get userModel;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionViewEntityImplCopyWith<_$ConnectionViewEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
