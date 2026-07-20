// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_role_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamRoleModel _$TeamRoleModelFromJson(Map<String, dynamic> json) {
  return _TeamRoleModel.fromJson(json);
}

/// @nodoc
mixin _$TeamRoleModel {
  @JsonKey(name: "teamRoleId")
  int get teamRoleId => throw _privateConstructorUsedError;
  @JsonKey(name: "roleName")
  String get roleName => throw _privateConstructorUsedError;
  @JsonKey(name: "teamId")
  int get teamId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamRoleModelCopyWith<TeamRoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamRoleModelCopyWith<$Res> {
  factory $TeamRoleModelCopyWith(
          TeamRoleModel value, $Res Function(TeamRoleModel) then) =
      _$TeamRoleModelCopyWithImpl<$Res, TeamRoleModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "teamRoleId") int teamRoleId,
      @JsonKey(name: "roleName") String roleName,
      @JsonKey(name: "teamId") int teamId});
}

/// @nodoc
class _$TeamRoleModelCopyWithImpl<$Res, $Val extends TeamRoleModel>
    implements $TeamRoleModelCopyWith<$Res> {
  _$TeamRoleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamRoleId = null,
    Object? roleName = null,
    Object? teamId = null,
  }) {
    return _then(_value.copyWith(
      teamRoleId: null == teamRoleId
          ? _value.teamRoleId
          : teamRoleId // ignore: cast_nullable_to_non_nullable
              as int,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamRoleModelImplCopyWith<$Res>
    implements $TeamRoleModelCopyWith<$Res> {
  factory _$$TeamRoleModelImplCopyWith(
          _$TeamRoleModelImpl value, $Res Function(_$TeamRoleModelImpl) then) =
      __$$TeamRoleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "teamRoleId") int teamRoleId,
      @JsonKey(name: "roleName") String roleName,
      @JsonKey(name: "teamId") int teamId});
}

/// @nodoc
class __$$TeamRoleModelImplCopyWithImpl<$Res>
    extends _$TeamRoleModelCopyWithImpl<$Res, _$TeamRoleModelImpl>
    implements _$$TeamRoleModelImplCopyWith<$Res> {
  __$$TeamRoleModelImplCopyWithImpl(
      _$TeamRoleModelImpl _value, $Res Function(_$TeamRoleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamRoleId = null,
    Object? roleName = null,
    Object? teamId = null,
  }) {
    return _then(_$TeamRoleModelImpl(
      teamRoleId: null == teamRoleId
          ? _value.teamRoleId
          : teamRoleId // ignore: cast_nullable_to_non_nullable
              as int,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamRoleModelImpl implements _TeamRoleModel {
  _$TeamRoleModelImpl(
      {@JsonKey(name: "teamRoleId") required this.teamRoleId,
      @JsonKey(name: "roleName") required this.roleName,
      @JsonKey(name: "teamId") required this.teamId});

  factory _$TeamRoleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamRoleModelImplFromJson(json);

  @override
  @JsonKey(name: "teamRoleId")
  final int teamRoleId;
  @override
  @JsonKey(name: "roleName")
  final String roleName;
  @override
  @JsonKey(name: "teamId")
  final int teamId;

  @override
  String toString() {
    return 'TeamRoleModel(teamRoleId: $teamRoleId, roleName: $roleName, teamId: $teamId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamRoleModelImpl &&
            (identical(other.teamRoleId, teamRoleId) ||
                other.teamRoleId == teamRoleId) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName) &&
            (identical(other.teamId, teamId) || other.teamId == teamId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, teamRoleId, roleName, teamId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamRoleModelImplCopyWith<_$TeamRoleModelImpl> get copyWith =>
      __$$TeamRoleModelImplCopyWithImpl<_$TeamRoleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamRoleModelImplToJson(
      this,
    );
  }
}

abstract class _TeamRoleModel implements TeamRoleModel {
  factory _TeamRoleModel(
          {@JsonKey(name: "teamRoleId") required final int teamRoleId,
          @JsonKey(name: "roleName") required final String roleName,
          @JsonKey(name: "teamId") required final int teamId}) =
      _$TeamRoleModelImpl;

  factory _TeamRoleModel.fromJson(Map<String, dynamic> json) =
      _$TeamRoleModelImpl.fromJson;

  @override
  @JsonKey(name: "teamRoleId")
  int get teamRoleId;
  @override
  @JsonKey(name: "roleName")
  String get roleName;
  @override
  @JsonKey(name: "teamId")
  int get teamId;
  @override
  @JsonKey(ignore: true)
  _$$TeamRoleModelImplCopyWith<_$TeamRoleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
