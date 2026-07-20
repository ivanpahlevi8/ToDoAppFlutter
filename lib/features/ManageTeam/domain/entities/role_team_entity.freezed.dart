// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_team_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoleTeamEntity {
  int get teamRoleId => throw _privateConstructorUsedError;
  String get teamRoleName => throw _privateConstructorUsedError;
  int get teamId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoleTeamEntityCopyWith<RoleTeamEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleTeamEntityCopyWith<$Res> {
  factory $RoleTeamEntityCopyWith(
          RoleTeamEntity value, $Res Function(RoleTeamEntity) then) =
      _$RoleTeamEntityCopyWithImpl<$Res, RoleTeamEntity>;
  @useResult
  $Res call({int teamRoleId, String teamRoleName, int teamId});
}

/// @nodoc
class _$RoleTeamEntityCopyWithImpl<$Res, $Val extends RoleTeamEntity>
    implements $RoleTeamEntityCopyWith<$Res> {
  _$RoleTeamEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamRoleId = null,
    Object? teamRoleName = null,
    Object? teamId = null,
  }) {
    return _then(_value.copyWith(
      teamRoleId: null == teamRoleId
          ? _value.teamRoleId
          : teamRoleId // ignore: cast_nullable_to_non_nullable
              as int,
      teamRoleName: null == teamRoleName
          ? _value.teamRoleName
          : teamRoleName // ignore: cast_nullable_to_non_nullable
              as String,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleTeamEntityImplCopyWith<$Res>
    implements $RoleTeamEntityCopyWith<$Res> {
  factory _$$RoleTeamEntityImplCopyWith(_$RoleTeamEntityImpl value,
          $Res Function(_$RoleTeamEntityImpl) then) =
      __$$RoleTeamEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int teamRoleId, String teamRoleName, int teamId});
}

/// @nodoc
class __$$RoleTeamEntityImplCopyWithImpl<$Res>
    extends _$RoleTeamEntityCopyWithImpl<$Res, _$RoleTeamEntityImpl>
    implements _$$RoleTeamEntityImplCopyWith<$Res> {
  __$$RoleTeamEntityImplCopyWithImpl(
      _$RoleTeamEntityImpl _value, $Res Function(_$RoleTeamEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamRoleId = null,
    Object? teamRoleName = null,
    Object? teamId = null,
  }) {
    return _then(_$RoleTeamEntityImpl(
      teamRoleId: null == teamRoleId
          ? _value.teamRoleId
          : teamRoleId // ignore: cast_nullable_to_non_nullable
              as int,
      teamRoleName: null == teamRoleName
          ? _value.teamRoleName
          : teamRoleName // ignore: cast_nullable_to_non_nullable
              as String,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RoleTeamEntityImpl implements _RoleTeamEntity {
  _$RoleTeamEntityImpl(
      {required this.teamRoleId,
      required this.teamRoleName,
      required this.teamId});

  @override
  final int teamRoleId;
  @override
  final String teamRoleName;
  @override
  final int teamId;

  @override
  String toString() {
    return 'RoleTeamEntity(teamRoleId: $teamRoleId, teamRoleName: $teamRoleName, teamId: $teamId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleTeamEntityImpl &&
            (identical(other.teamRoleId, teamRoleId) ||
                other.teamRoleId == teamRoleId) &&
            (identical(other.teamRoleName, teamRoleName) ||
                other.teamRoleName == teamRoleName) &&
            (identical(other.teamId, teamId) || other.teamId == teamId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, teamRoleId, teamRoleName, teamId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleTeamEntityImplCopyWith<_$RoleTeamEntityImpl> get copyWith =>
      __$$RoleTeamEntityImplCopyWithImpl<_$RoleTeamEntityImpl>(
          this, _$identity);
}

abstract class _RoleTeamEntity implements RoleTeamEntity {
  factory _RoleTeamEntity(
      {required final int teamRoleId,
      required final String teamRoleName,
      required final int teamId}) = _$RoleTeamEntityImpl;

  @override
  int get teamRoleId;
  @override
  String get teamRoleName;
  @override
  int get teamId;
  @override
  @JsonKey(ignore: true)
  _$$RoleTeamEntityImplCopyWith<_$RoleTeamEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
