// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_list_view_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeamListViewEntity {
  TeamEntity get teamEntity => throw _privateConstructorUsedError;
  UserModel get teamLeader => throw _privateConstructorUsedError;
  bool get isTeamLead => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamListViewEntityCopyWith<TeamListViewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamListViewEntityCopyWith<$Res> {
  factory $TeamListViewEntityCopyWith(
          TeamListViewEntity value, $Res Function(TeamListViewEntity) then) =
      _$TeamListViewEntityCopyWithImpl<$Res, TeamListViewEntity>;
  @useResult
  $Res call({TeamEntity teamEntity, UserModel teamLeader, bool isTeamLead});

  $TeamEntityCopyWith<$Res> get teamEntity;
  $UserModelCopyWith<$Res> get teamLeader;
}

/// @nodoc
class _$TeamListViewEntityCopyWithImpl<$Res, $Val extends TeamListViewEntity>
    implements $TeamListViewEntityCopyWith<$Res> {
  _$TeamListViewEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamEntity = null,
    Object? teamLeader = null,
    Object? isTeamLead = null,
  }) {
    return _then(_value.copyWith(
      teamEntity: null == teamEntity
          ? _value.teamEntity
          : teamEntity // ignore: cast_nullable_to_non_nullable
              as TeamEntity,
      teamLeader: null == teamLeader
          ? _value.teamLeader
          : teamLeader // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isTeamLead: null == isTeamLead
          ? _value.isTeamLead
          : isTeamLead // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamEntityCopyWith<$Res> get teamEntity {
    return $TeamEntityCopyWith<$Res>(_value.teamEntity, (value) {
      return _then(_value.copyWith(teamEntity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get teamLeader {
    return $UserModelCopyWith<$Res>(_value.teamLeader, (value) {
      return _then(_value.copyWith(teamLeader: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamListViewEntityImplCopyWith<$Res>
    implements $TeamListViewEntityCopyWith<$Res> {
  factory _$$TeamListViewEntityImplCopyWith(_$TeamListViewEntityImpl value,
          $Res Function(_$TeamListViewEntityImpl) then) =
      __$$TeamListViewEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TeamEntity teamEntity, UserModel teamLeader, bool isTeamLead});

  @override
  $TeamEntityCopyWith<$Res> get teamEntity;
  @override
  $UserModelCopyWith<$Res> get teamLeader;
}

/// @nodoc
class __$$TeamListViewEntityImplCopyWithImpl<$Res>
    extends _$TeamListViewEntityCopyWithImpl<$Res, _$TeamListViewEntityImpl>
    implements _$$TeamListViewEntityImplCopyWith<$Res> {
  __$$TeamListViewEntityImplCopyWithImpl(_$TeamListViewEntityImpl _value,
      $Res Function(_$TeamListViewEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamEntity = null,
    Object? teamLeader = null,
    Object? isTeamLead = null,
  }) {
    return _then(_$TeamListViewEntityImpl(
      teamEntity: null == teamEntity
          ? _value.teamEntity
          : teamEntity // ignore: cast_nullable_to_non_nullable
              as TeamEntity,
      teamLeader: null == teamLeader
          ? _value.teamLeader
          : teamLeader // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isTeamLead: null == isTeamLead
          ? _value.isTeamLead
          : isTeamLead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TeamListViewEntityImpl implements _TeamListViewEntity {
  _$TeamListViewEntityImpl(
      {required this.teamEntity,
      required this.teamLeader,
      required this.isTeamLead});

  @override
  final TeamEntity teamEntity;
  @override
  final UserModel teamLeader;
  @override
  final bool isTeamLead;

  @override
  String toString() {
    return 'TeamListViewEntity(teamEntity: $teamEntity, teamLeader: $teamLeader, isTeamLead: $isTeamLead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamListViewEntityImpl &&
            (identical(other.teamEntity, teamEntity) ||
                other.teamEntity == teamEntity) &&
            (identical(other.teamLeader, teamLeader) ||
                other.teamLeader == teamLeader) &&
            (identical(other.isTeamLead, isTeamLead) ||
                other.isTeamLead == isTeamLead));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, teamEntity, teamLeader, isTeamLead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamListViewEntityImplCopyWith<_$TeamListViewEntityImpl> get copyWith =>
      __$$TeamListViewEntityImplCopyWithImpl<_$TeamListViewEntityImpl>(
          this, _$identity);
}

abstract class _TeamListViewEntity implements TeamListViewEntity {
  factory _TeamListViewEntity(
      {required final TeamEntity teamEntity,
      required final UserModel teamLeader,
      required final bool isTeamLead}) = _$TeamListViewEntityImpl;

  @override
  TeamEntity get teamEntity;
  @override
  UserModel get teamLeader;
  @override
  bool get isTeamLead;
  @override
  @JsonKey(ignore: true)
  _$$TeamListViewEntityImplCopyWith<_$TeamListViewEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
