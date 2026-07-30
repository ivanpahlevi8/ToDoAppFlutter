// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_team_input_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoleTeamInputEntity {
  int get teamId => throw _privateConstructorUsedError;
  String get roleName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoleTeamInputEntityCopyWith<RoleTeamInputEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleTeamInputEntityCopyWith<$Res> {
  factory $RoleTeamInputEntityCopyWith(
          RoleTeamInputEntity value, $Res Function(RoleTeamInputEntity) then) =
      _$RoleTeamInputEntityCopyWithImpl<$Res, RoleTeamInputEntity>;
  @useResult
  $Res call({int teamId, String roleName});
}

/// @nodoc
class _$RoleTeamInputEntityCopyWithImpl<$Res, $Val extends RoleTeamInputEntity>
    implements $RoleTeamInputEntityCopyWith<$Res> {
  _$RoleTeamInputEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
    Object? roleName = null,
  }) {
    return _then(_value.copyWith(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleTeamInputEntityImplCopyWith<$Res>
    implements $RoleTeamInputEntityCopyWith<$Res> {
  factory _$$RoleTeamInputEntityImplCopyWith(_$RoleTeamInputEntityImpl value,
          $Res Function(_$RoleTeamInputEntityImpl) then) =
      __$$RoleTeamInputEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int teamId, String roleName});
}

/// @nodoc
class __$$RoleTeamInputEntityImplCopyWithImpl<$Res>
    extends _$RoleTeamInputEntityCopyWithImpl<$Res, _$RoleTeamInputEntityImpl>
    implements _$$RoleTeamInputEntityImplCopyWith<$Res> {
  __$$RoleTeamInputEntityImplCopyWithImpl(_$RoleTeamInputEntityImpl _value,
      $Res Function(_$RoleTeamInputEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
    Object? roleName = null,
  }) {
    return _then(_$RoleTeamInputEntityImpl(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoleTeamInputEntityImpl implements _RoleTeamInputEntity {
  _$RoleTeamInputEntityImpl({required this.teamId, required this.roleName});

  @override
  final int teamId;
  @override
  final String roleName;

  @override
  String toString() {
    return 'RoleTeamInputEntity(teamId: $teamId, roleName: $roleName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleTeamInputEntityImpl &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teamId, roleName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleTeamInputEntityImplCopyWith<_$RoleTeamInputEntityImpl> get copyWith =>
      __$$RoleTeamInputEntityImplCopyWithImpl<_$RoleTeamInputEntityImpl>(
          this, _$identity);
}

abstract class _RoleTeamInputEntity implements RoleTeamInputEntity {
  factory _RoleTeamInputEntity(
      {required final int teamId,
      required final String roleName}) = _$RoleTeamInputEntityImpl;

  @override
  int get teamId;
  @override
  String get roleName;
  @override
  @JsonKey(ignore: true)
  _$$RoleTeamInputEntityImplCopyWith<_$RoleTeamInputEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
