// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchUserEntity {
  bool get isConnected => throw _privateConstructorUsedError;
  bool get isSelf => throw _privateConstructorUsedError;
  UserModel get userModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchUserEntityCopyWith<SearchUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserEntityCopyWith<$Res> {
  factory $SearchUserEntityCopyWith(
          SearchUserEntity value, $Res Function(SearchUserEntity) then) =
      _$SearchUserEntityCopyWithImpl<$Res, SearchUserEntity>;
  @useResult
  $Res call({bool isConnected, bool isSelf, UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$SearchUserEntityCopyWithImpl<$Res, $Val extends SearchUserEntity>
    implements $SearchUserEntityCopyWith<$Res> {
  _$SearchUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? isSelf = null,
    Object? userModel = null,
  }) {
    return _then(_value.copyWith(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelf: null == isSelf
          ? _value.isSelf
          : isSelf // ignore: cast_nullable_to_non_nullable
              as bool,
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
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
abstract class _$$SearchUserEntityImplCopyWith<$Res>
    implements $SearchUserEntityCopyWith<$Res> {
  factory _$$SearchUserEntityImplCopyWith(_$SearchUserEntityImpl value,
          $Res Function(_$SearchUserEntityImpl) then) =
      __$$SearchUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isConnected, bool isSelf, UserModel userModel});

  @override
  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$SearchUserEntityImplCopyWithImpl<$Res>
    extends _$SearchUserEntityCopyWithImpl<$Res, _$SearchUserEntityImpl>
    implements _$$SearchUserEntityImplCopyWith<$Res> {
  __$$SearchUserEntityImplCopyWithImpl(_$SearchUserEntityImpl _value,
      $Res Function(_$SearchUserEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
    Object? isSelf = null,
    Object? userModel = null,
  }) {
    return _then(_$SearchUserEntityImpl(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelf: null == isSelf
          ? _value.isSelf
          : isSelf // ignore: cast_nullable_to_non_nullable
              as bool,
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$SearchUserEntityImpl implements _SearchUserEntity {
  _$SearchUserEntityImpl(
      {required this.isConnected,
      required this.isSelf,
      required this.userModel});

  @override
  final bool isConnected;
  @override
  final bool isSelf;
  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'SearchUserEntity(isConnected: $isConnected, isSelf: $isSelf, userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUserEntityImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.isSelf, isSelf) || other.isSelf == isSelf) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected, isSelf, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUserEntityImplCopyWith<_$SearchUserEntityImpl> get copyWith =>
      __$$SearchUserEntityImplCopyWithImpl<_$SearchUserEntityImpl>(
          this, _$identity);
}

abstract class _SearchUserEntity implements SearchUserEntity {
  factory _SearchUserEntity(
      {required final bool isConnected,
      required final bool isSelf,
      required final UserModel userModel}) = _$SearchUserEntityImpl;

  @override
  bool get isConnected;
  @override
  bool get isSelf;
  @override
  UserModel get userModel;
  @override
  @JsonKey(ignore: true)
  _$$SearchUserEntityImplCopyWith<_$SearchUserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
