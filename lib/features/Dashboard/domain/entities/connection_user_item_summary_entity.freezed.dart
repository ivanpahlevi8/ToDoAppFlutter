// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_user_item_summary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionUserItemSummaryEntity {
  ConnectionEntity get connectionEntity => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionUserItemSummaryEntityCopyWith<ConnectionUserItemSummaryEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionUserItemSummaryEntityCopyWith<$Res> {
  factory $ConnectionUserItemSummaryEntityCopyWith(
          ConnectionUserItemSummaryEntity value,
          $Res Function(ConnectionUserItemSummaryEntity) then) =
      _$ConnectionUserItemSummaryEntityCopyWithImpl<$Res,
          ConnectionUserItemSummaryEntity>;
  @useResult
  $Res call({ConnectionEntity connectionEntity, UserModel user});

  $ConnectionEntityCopyWith<$Res> get connectionEntity;
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$ConnectionUserItemSummaryEntityCopyWithImpl<$Res,
        $Val extends ConnectionUserItemSummaryEntity>
    implements $ConnectionUserItemSummaryEntityCopyWith<$Res> {
  _$ConnectionUserItemSummaryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionEntity = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      connectionEntity: null == connectionEntity
          ? _value.connectionEntity
          : connectionEntity // ignore: cast_nullable_to_non_nullable
              as ConnectionEntity,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
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
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConnectionUserItemSummaryEntityImplCopyWith<$Res>
    implements $ConnectionUserItemSummaryEntityCopyWith<$Res> {
  factory _$$ConnectionUserItemSummaryEntityImplCopyWith(
          _$ConnectionUserItemSummaryEntityImpl value,
          $Res Function(_$ConnectionUserItemSummaryEntityImpl) then) =
      __$$ConnectionUserItemSummaryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectionEntity connectionEntity, UserModel user});

  @override
  $ConnectionEntityCopyWith<$Res> get connectionEntity;
  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$ConnectionUserItemSummaryEntityImplCopyWithImpl<$Res>
    extends _$ConnectionUserItemSummaryEntityCopyWithImpl<$Res,
        _$ConnectionUserItemSummaryEntityImpl>
    implements _$$ConnectionUserItemSummaryEntityImplCopyWith<$Res> {
  __$$ConnectionUserItemSummaryEntityImplCopyWithImpl(
      _$ConnectionUserItemSummaryEntityImpl _value,
      $Res Function(_$ConnectionUserItemSummaryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionEntity = null,
    Object? user = null,
  }) {
    return _then(_$ConnectionUserItemSummaryEntityImpl(
      connectionEntity: null == connectionEntity
          ? _value.connectionEntity
          : connectionEntity // ignore: cast_nullable_to_non_nullable
              as ConnectionEntity,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$ConnectionUserItemSummaryEntityImpl
    implements _ConnectionUserItemSummaryEntity {
  _$ConnectionUserItemSummaryEntityImpl(
      {required this.connectionEntity, required this.user});

  @override
  final ConnectionEntity connectionEntity;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'ConnectionUserItemSummaryEntity(connectionEntity: $connectionEntity, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionUserItemSummaryEntityImpl &&
            (identical(other.connectionEntity, connectionEntity) ||
                other.connectionEntity == connectionEntity) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectionEntity, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionUserItemSummaryEntityImplCopyWith<
          _$ConnectionUserItemSummaryEntityImpl>
      get copyWith => __$$ConnectionUserItemSummaryEntityImplCopyWithImpl<
          _$ConnectionUserItemSummaryEntityImpl>(this, _$identity);
}

abstract class _ConnectionUserItemSummaryEntity
    implements ConnectionUserItemSummaryEntity {
  factory _ConnectionUserItemSummaryEntity(
      {required final ConnectionEntity connectionEntity,
      required final UserModel user}) = _$ConnectionUserItemSummaryEntityImpl;

  @override
  ConnectionEntity get connectionEntity;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionUserItemSummaryEntityImplCopyWith<
          _$ConnectionUserItemSummaryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
