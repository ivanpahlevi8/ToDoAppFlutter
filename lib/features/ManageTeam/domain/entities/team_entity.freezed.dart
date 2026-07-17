// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeamEntity {
  int get teamId => throw _privateConstructorUsedError;
  String get teamName => throw _privateConstructorUsedError;
  String get teamDescription => throw _privateConstructorUsedError;
  String get teamLeaderId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamEntityCopyWith<TeamEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamEntityCopyWith<$Res> {
  factory $TeamEntityCopyWith(
          TeamEntity value, $Res Function(TeamEntity) then) =
      _$TeamEntityCopyWithImpl<$Res, TeamEntity>;
  @useResult
  $Res call(
      {int teamId,
      String teamName,
      String teamDescription,
      String teamLeaderId,
      String createdAt});
}

/// @nodoc
class _$TeamEntityCopyWithImpl<$Res, $Val extends TeamEntity>
    implements $TeamEntityCopyWith<$Res> {
  _$TeamEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
    Object? teamName = null,
    Object? teamDescription = null,
    Object? teamLeaderId = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      teamDescription: null == teamDescription
          ? _value.teamDescription
          : teamDescription // ignore: cast_nullable_to_non_nullable
              as String,
      teamLeaderId: null == teamLeaderId
          ? _value.teamLeaderId
          : teamLeaderId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamEntityImplCopyWith<$Res>
    implements $TeamEntityCopyWith<$Res> {
  factory _$$TeamEntityImplCopyWith(
          _$TeamEntityImpl value, $Res Function(_$TeamEntityImpl) then) =
      __$$TeamEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int teamId,
      String teamName,
      String teamDescription,
      String teamLeaderId,
      String createdAt});
}

/// @nodoc
class __$$TeamEntityImplCopyWithImpl<$Res>
    extends _$TeamEntityCopyWithImpl<$Res, _$TeamEntityImpl>
    implements _$$TeamEntityImplCopyWith<$Res> {
  __$$TeamEntityImplCopyWithImpl(
      _$TeamEntityImpl _value, $Res Function(_$TeamEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
    Object? teamName = null,
    Object? teamDescription = null,
    Object? teamLeaderId = null,
    Object? createdAt = null,
  }) {
    return _then(_$TeamEntityImpl(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      teamDescription: null == teamDescription
          ? _value.teamDescription
          : teamDescription // ignore: cast_nullable_to_non_nullable
              as String,
      teamLeaderId: null == teamLeaderId
          ? _value.teamLeaderId
          : teamLeaderId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TeamEntityImpl implements _TeamEntity {
  _$TeamEntityImpl(
      {required this.teamId,
      required this.teamName,
      required this.teamDescription,
      required this.teamLeaderId,
      required this.createdAt});

  @override
  final int teamId;
  @override
  final String teamName;
  @override
  final String teamDescription;
  @override
  final String teamLeaderId;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'TeamEntity(teamId: $teamId, teamName: $teamName, teamDescription: $teamDescription, teamLeaderId: $teamLeaderId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamEntityImpl &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            (identical(other.teamDescription, teamDescription) ||
                other.teamDescription == teamDescription) &&
            (identical(other.teamLeaderId, teamLeaderId) ||
                other.teamLeaderId == teamLeaderId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, teamId, teamName, teamDescription, teamLeaderId, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamEntityImplCopyWith<_$TeamEntityImpl> get copyWith =>
      __$$TeamEntityImplCopyWithImpl<_$TeamEntityImpl>(this, _$identity);
}

abstract class _TeamEntity implements TeamEntity {
  factory _TeamEntity(
      {required final int teamId,
      required final String teamName,
      required final String teamDescription,
      required final String teamLeaderId,
      required final String createdAt}) = _$TeamEntityImpl;

  @override
  int get teamId;
  @override
  String get teamName;
  @override
  String get teamDescription;
  @override
  String get teamLeaderId;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$TeamEntityImplCopyWith<_$TeamEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
