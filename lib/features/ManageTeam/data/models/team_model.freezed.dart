// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamModel _$TeamModelFromJson(Map<String, dynamic> json) {
  return _TeamModel.fromJson(json);
}

/// @nodoc
mixin _$TeamModel {
  @JsonKey(name: "teamId")
  int? get teamId => throw _privateConstructorUsedError;
  @JsonKey(name: "teamName")
  String get teamName => throw _privateConstructorUsedError;
  @JsonKey(name: "teamDescription")
  String get teamDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "teamLeader")
  String get teamLeaderId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "userMember")
  List<UserModel>? get userMembers => throw _privateConstructorUsedError;
  @JsonKey(name: "roleMember")
  List<TeamRoleModel>? get teamRoles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamModelCopyWith<TeamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamModelCopyWith<$Res> {
  factory $TeamModelCopyWith(TeamModel value, $Res Function(TeamModel) then) =
      _$TeamModelCopyWithImpl<$Res, TeamModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "teamId") int? teamId,
      @JsonKey(name: "teamName") String teamName,
      @JsonKey(name: "teamDescription") String teamDescription,
      @JsonKey(name: "teamLeader") String teamLeaderId,
      @JsonKey(name: "createdAt") String createdAt,
      @JsonKey(name: "userMember") List<UserModel>? userMembers,
      @JsonKey(name: "roleMember") List<TeamRoleModel>? teamRoles});
}

/// @nodoc
class _$TeamModelCopyWithImpl<$Res, $Val extends TeamModel>
    implements $TeamModelCopyWith<$Res> {
  _$TeamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = freezed,
    Object? teamName = null,
    Object? teamDescription = null,
    Object? teamLeaderId = null,
    Object? createdAt = null,
    Object? userMembers = freezed,
    Object? teamRoles = freezed,
  }) {
    return _then(_value.copyWith(
      teamId: freezed == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      userMembers: freezed == userMembers
          ? _value.userMembers
          : userMembers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      teamRoles: freezed == teamRoles
          ? _value.teamRoles
          : teamRoles // ignore: cast_nullable_to_non_nullable
              as List<TeamRoleModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamModelImplCopyWith<$Res>
    implements $TeamModelCopyWith<$Res> {
  factory _$$TeamModelImplCopyWith(
          _$TeamModelImpl value, $Res Function(_$TeamModelImpl) then) =
      __$$TeamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "teamId") int? teamId,
      @JsonKey(name: "teamName") String teamName,
      @JsonKey(name: "teamDescription") String teamDescription,
      @JsonKey(name: "teamLeader") String teamLeaderId,
      @JsonKey(name: "createdAt") String createdAt,
      @JsonKey(name: "userMember") List<UserModel>? userMembers,
      @JsonKey(name: "roleMember") List<TeamRoleModel>? teamRoles});
}

/// @nodoc
class __$$TeamModelImplCopyWithImpl<$Res>
    extends _$TeamModelCopyWithImpl<$Res, _$TeamModelImpl>
    implements _$$TeamModelImplCopyWith<$Res> {
  __$$TeamModelImplCopyWithImpl(
      _$TeamModelImpl _value, $Res Function(_$TeamModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = freezed,
    Object? teamName = null,
    Object? teamDescription = null,
    Object? teamLeaderId = null,
    Object? createdAt = null,
    Object? userMembers = freezed,
    Object? teamRoles = freezed,
  }) {
    return _then(_$TeamModelImpl(
      teamId: freezed == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      userMembers: freezed == userMembers
          ? _value._userMembers
          : userMembers // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      teamRoles: freezed == teamRoles
          ? _value._teamRoles
          : teamRoles // ignore: cast_nullable_to_non_nullable
              as List<TeamRoleModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamModelImpl implements _TeamModel {
  _$TeamModelImpl(
      {@JsonKey(name: "teamId") required this.teamId,
      @JsonKey(name: "teamName") required this.teamName,
      @JsonKey(name: "teamDescription") required this.teamDescription,
      @JsonKey(name: "teamLeader") required this.teamLeaderId,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "userMember") final List<UserModel>? userMembers,
      @JsonKey(name: "roleMember") final List<TeamRoleModel>? teamRoles})
      : _userMembers = userMembers,
        _teamRoles = teamRoles;

  factory _$TeamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamModelImplFromJson(json);

  @override
  @JsonKey(name: "teamId")
  final int? teamId;
  @override
  @JsonKey(name: "teamName")
  final String teamName;
  @override
  @JsonKey(name: "teamDescription")
  final String teamDescription;
  @override
  @JsonKey(name: "teamLeader")
  final String teamLeaderId;
  @override
  @JsonKey(name: "createdAt")
  final String createdAt;
  final List<UserModel>? _userMembers;
  @override
  @JsonKey(name: "userMember")
  List<UserModel>? get userMembers {
    final value = _userMembers;
    if (value == null) return null;
    if (_userMembers is EqualUnmodifiableListView) return _userMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TeamRoleModel>? _teamRoles;
  @override
  @JsonKey(name: "roleMember")
  List<TeamRoleModel>? get teamRoles {
    final value = _teamRoles;
    if (value == null) return null;
    if (_teamRoles is EqualUnmodifiableListView) return _teamRoles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TeamModel(teamId: $teamId, teamName: $teamName, teamDescription: $teamDescription, teamLeaderId: $teamLeaderId, createdAt: $createdAt, userMembers: $userMembers, teamRoles: $teamRoles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamModelImpl &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            (identical(other.teamDescription, teamDescription) ||
                other.teamDescription == teamDescription) &&
            (identical(other.teamLeaderId, teamLeaderId) ||
                other.teamLeaderId == teamLeaderId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._userMembers, _userMembers) &&
            const DeepCollectionEquality()
                .equals(other._teamRoles, _teamRoles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      teamId,
      teamName,
      teamDescription,
      teamLeaderId,
      createdAt,
      const DeepCollectionEquality().hash(_userMembers),
      const DeepCollectionEquality().hash(_teamRoles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamModelImplCopyWith<_$TeamModelImpl> get copyWith =>
      __$$TeamModelImplCopyWithImpl<_$TeamModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamModelImplToJson(
      this,
    );
  }
}

abstract class _TeamModel implements TeamModel {
  factory _TeamModel(
      {@JsonKey(name: "teamId") required final int? teamId,
      @JsonKey(name: "teamName") required final String teamName,
      @JsonKey(name: "teamDescription") required final String teamDescription,
      @JsonKey(name: "teamLeader") required final String teamLeaderId,
      @JsonKey(name: "createdAt") required final String createdAt,
      @JsonKey(name: "userMember") final List<UserModel>? userMembers,
      @JsonKey(name: "roleMember")
      final List<TeamRoleModel>? teamRoles}) = _$TeamModelImpl;

  factory _TeamModel.fromJson(Map<String, dynamic> json) =
      _$TeamModelImpl.fromJson;

  @override
  @JsonKey(name: "teamId")
  int? get teamId;
  @override
  @JsonKey(name: "teamName")
  String get teamName;
  @override
  @JsonKey(name: "teamDescription")
  String get teamDescription;
  @override
  @JsonKey(name: "teamLeader")
  String get teamLeaderId;
  @override
  @JsonKey(name: "createdAt")
  String get createdAt;
  @override
  @JsonKey(name: "userMember")
  List<UserModel>? get userMembers;
  @override
  @JsonKey(name: "roleMember")
  List<TeamRoleModel>? get teamRoles;
  @override
  @JsonKey(ignore: true)
  _$$TeamModelImplCopyWith<_$TeamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
