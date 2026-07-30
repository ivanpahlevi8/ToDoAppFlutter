// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_team_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoleTeamInputModel _$RoleTeamInputModelFromJson(Map<String, dynamic> json) {
  return _RoleTeamInputModel.fromJson(json);
}

/// @nodoc
mixin _$RoleTeamInputModel {
  @JsonKey(name: "roleName")
  String get roleName => throw _privateConstructorUsedError;
  @JsonKey(name: "teamId")
  int get teamId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleTeamInputModelCopyWith<RoleTeamInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleTeamInputModelCopyWith<$Res> {
  factory $RoleTeamInputModelCopyWith(
          RoleTeamInputModel value, $Res Function(RoleTeamInputModel) then) =
      _$RoleTeamInputModelCopyWithImpl<$Res, RoleTeamInputModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "roleName") String roleName,
      @JsonKey(name: "teamId") int teamId});
}

/// @nodoc
class _$RoleTeamInputModelCopyWithImpl<$Res, $Val extends RoleTeamInputModel>
    implements $RoleTeamInputModelCopyWith<$Res> {
  _$RoleTeamInputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleName = null,
    Object? teamId = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$RoleTeamInputModelImplCopyWith<$Res>
    implements $RoleTeamInputModelCopyWith<$Res> {
  factory _$$RoleTeamInputModelImplCopyWith(_$RoleTeamInputModelImpl value,
          $Res Function(_$RoleTeamInputModelImpl) then) =
      __$$RoleTeamInputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "roleName") String roleName,
      @JsonKey(name: "teamId") int teamId});
}

/// @nodoc
class __$$RoleTeamInputModelImplCopyWithImpl<$Res>
    extends _$RoleTeamInputModelCopyWithImpl<$Res, _$RoleTeamInputModelImpl>
    implements _$$RoleTeamInputModelImplCopyWith<$Res> {
  __$$RoleTeamInputModelImplCopyWithImpl(_$RoleTeamInputModelImpl _value,
      $Res Function(_$RoleTeamInputModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleName = null,
    Object? teamId = null,
  }) {
    return _then(_$RoleTeamInputModelImpl(
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
class _$RoleTeamInputModelImpl implements _RoleTeamInputModel {
  _$RoleTeamInputModelImpl(
      {@JsonKey(name: "roleName") required this.roleName,
      @JsonKey(name: "teamId") required this.teamId});

  factory _$RoleTeamInputModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleTeamInputModelImplFromJson(json);

  @override
  @JsonKey(name: "roleName")
  final String roleName;
  @override
  @JsonKey(name: "teamId")
  final int teamId;

  @override
  String toString() {
    return 'RoleTeamInputModel(roleName: $roleName, teamId: $teamId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleTeamInputModelImpl &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName) &&
            (identical(other.teamId, teamId) || other.teamId == teamId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roleName, teamId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleTeamInputModelImplCopyWith<_$RoleTeamInputModelImpl> get copyWith =>
      __$$RoleTeamInputModelImplCopyWithImpl<_$RoleTeamInputModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleTeamInputModelImplToJson(
      this,
    );
  }
}

abstract class _RoleTeamInputModel implements RoleTeamInputModel {
  factory _RoleTeamInputModel(
          {@JsonKey(name: "roleName") required final String roleName,
          @JsonKey(name: "teamId") required final int teamId}) =
      _$RoleTeamInputModelImpl;

  factory _RoleTeamInputModel.fromJson(Map<String, dynamic> json) =
      _$RoleTeamInputModelImpl.fromJson;

  @override
  @JsonKey(name: "roleName")
  String get roleName;
  @override
  @JsonKey(name: "teamId")
  int get teamId;
  @override
  @JsonKey(ignore: true)
  _$$RoleTeamInputModelImplCopyWith<_$RoleTeamInputModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
