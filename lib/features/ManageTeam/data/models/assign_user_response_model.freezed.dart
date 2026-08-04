// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assign_user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssignUserResponseModel _$AssignUserResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AssignUserResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AssignUserResponseModel {
  @JsonKey(name: "teamId")
  int get teamId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "teamRoleId")
  int get teamRoleId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignUserResponseModelCopyWith<AssignUserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignUserResponseModelCopyWith<$Res> {
  factory $AssignUserResponseModelCopyWith(AssignUserResponseModel value,
          $Res Function(AssignUserResponseModel) then) =
      _$AssignUserResponseModelCopyWithImpl<$Res, AssignUserResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "teamId") int teamId,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "teamRoleId") int teamRoleId});
}

/// @nodoc
class _$AssignUserResponseModelCopyWithImpl<$Res,
        $Val extends AssignUserResponseModel>
    implements $AssignUserResponseModelCopyWith<$Res> {
  _$AssignUserResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
    Object? userId = null,
    Object? teamRoleId = null,
  }) {
    return _then(_value.copyWith(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      teamRoleId: null == teamRoleId
          ? _value.teamRoleId
          : teamRoleId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssignUserResponseModelImplCopyWith<$Res>
    implements $AssignUserResponseModelCopyWith<$Res> {
  factory _$$AssignUserResponseModelImplCopyWith(
          _$AssignUserResponseModelImpl value,
          $Res Function(_$AssignUserResponseModelImpl) then) =
      __$$AssignUserResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "teamId") int teamId,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "teamRoleId") int teamRoleId});
}

/// @nodoc
class __$$AssignUserResponseModelImplCopyWithImpl<$Res>
    extends _$AssignUserResponseModelCopyWithImpl<$Res,
        _$AssignUserResponseModelImpl>
    implements _$$AssignUserResponseModelImplCopyWith<$Res> {
  __$$AssignUserResponseModelImplCopyWithImpl(
      _$AssignUserResponseModelImpl _value,
      $Res Function(_$AssignUserResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamId = null,
    Object? userId = null,
    Object? teamRoleId = null,
  }) {
    return _then(_$AssignUserResponseModelImpl(
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      teamRoleId: null == teamRoleId
          ? _value.teamRoleId
          : teamRoleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignUserResponseModelImpl implements _AssignUserResponseModel {
  _$AssignUserResponseModelImpl(
      {@JsonKey(name: "teamId") required this.teamId,
      @JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "teamRoleId") required this.teamRoleId});

  factory _$AssignUserResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignUserResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "teamId")
  final int teamId;
  @override
  @JsonKey(name: "userId")
  final String userId;
  @override
  @JsonKey(name: "teamRoleId")
  final int teamRoleId;

  @override
  String toString() {
    return 'AssignUserResponseModel(teamId: $teamId, userId: $userId, teamRoleId: $teamRoleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignUserResponseModelImpl &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.teamRoleId, teamRoleId) ||
                other.teamRoleId == teamRoleId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, teamId, userId, teamRoleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignUserResponseModelImplCopyWith<_$AssignUserResponseModelImpl>
      get copyWith => __$$AssignUserResponseModelImplCopyWithImpl<
          _$AssignUserResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignUserResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AssignUserResponseModel implements AssignUserResponseModel {
  factory _AssignUserResponseModel(
          {@JsonKey(name: "teamId") required final int teamId,
          @JsonKey(name: "userId") required final String userId,
          @JsonKey(name: "teamRoleId") required final int teamRoleId}) =
      _$AssignUserResponseModelImpl;

  factory _AssignUserResponseModel.fromJson(Map<String, dynamic> json) =
      _$AssignUserResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "teamId")
  int get teamId;
  @override
  @JsonKey(name: "userId")
  String get userId;
  @override
  @JsonKey(name: "teamRoleId")
  int get teamRoleId;
  @override
  @JsonKey(ignore: true)
  _$$AssignUserResponseModelImplCopyWith<_$AssignUserResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
