// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectEntity {
  int get projectId => throw _privateConstructorUsedError;
  String get projectName => throw _privateConstructorUsedError;
  String get projectDescription => throw _privateConstructorUsedError;
  String get projectLeadUserId => throw _privateConstructorUsedError;
  String get projectStatus => throw _privateConstructorUsedError;
  int get projectTeamId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  UserModel? get userModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectEntityCopyWith<ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEntityCopyWith<$Res> {
  factory $ProjectEntityCopyWith(
          ProjectEntity value, $Res Function(ProjectEntity) then) =
      _$ProjectEntityCopyWithImpl<$Res, ProjectEntity>;
  @useResult
  $Res call(
      {int projectId,
      String projectName,
      String projectDescription,
      String projectLeadUserId,
      String projectStatus,
      int projectTeamId,
      String createdAt,
      UserModel? userModel});

  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class _$ProjectEntityCopyWithImpl<$Res, $Val extends ProjectEntity>
    implements $ProjectEntityCopyWith<$Res> {
  _$ProjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? projectDescription = null,
    Object? projectLeadUserId = null,
    Object? projectStatus = null,
    Object? projectTeamId = null,
    Object? createdAt = null,
    Object? userModel = freezed,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      projectDescription: null == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      projectLeadUserId: null == projectLeadUserId
          ? _value.projectLeadUserId
          : projectLeadUserId // ignore: cast_nullable_to_non_nullable
              as String,
      projectStatus: null == projectStatus
          ? _value.projectStatus
          : projectStatus // ignore: cast_nullable_to_non_nullable
              as String,
      projectTeamId: null == projectTeamId
          ? _value.projectTeamId
          : projectTeamId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userModel {
    if (_value.userModel == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userModel!, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectEntityImplCopyWith<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  factory _$$ProjectEntityImplCopyWith(
          _$ProjectEntityImpl value, $Res Function(_$ProjectEntityImpl) then) =
      __$$ProjectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int projectId,
      String projectName,
      String projectDescription,
      String projectLeadUserId,
      String projectStatus,
      int projectTeamId,
      String createdAt,
      UserModel? userModel});

  @override
  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class __$$ProjectEntityImplCopyWithImpl<$Res>
    extends _$ProjectEntityCopyWithImpl<$Res, _$ProjectEntityImpl>
    implements _$$ProjectEntityImplCopyWith<$Res> {
  __$$ProjectEntityImplCopyWithImpl(
      _$ProjectEntityImpl _value, $Res Function(_$ProjectEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? projectDescription = null,
    Object? projectLeadUserId = null,
    Object? projectStatus = null,
    Object? projectTeamId = null,
    Object? createdAt = null,
    Object? userModel = freezed,
  }) {
    return _then(_$ProjectEntityImpl(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      projectDescription: null == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      projectLeadUserId: null == projectLeadUserId
          ? _value.projectLeadUserId
          : projectLeadUserId // ignore: cast_nullable_to_non_nullable
              as String,
      projectStatus: null == projectStatus
          ? _value.projectStatus
          : projectStatus // ignore: cast_nullable_to_non_nullable
              as String,
      projectTeamId: null == projectTeamId
          ? _value.projectTeamId
          : projectTeamId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$ProjectEntityImpl implements _ProjectEntity {
  _$ProjectEntityImpl(
      {required this.projectId,
      required this.projectName,
      required this.projectDescription,
      required this.projectLeadUserId,
      required this.projectStatus,
      required this.projectTeamId,
      required this.createdAt,
      required this.userModel});

  @override
  final int projectId;
  @override
  final String projectName;
  @override
  final String projectDescription;
  @override
  final String projectLeadUserId;
  @override
  final String projectStatus;
  @override
  final int projectTeamId;
  @override
  final String createdAt;
  @override
  final UserModel? userModel;

  @override
  String toString() {
    return 'ProjectEntity(projectId: $projectId, projectName: $projectName, projectDescription: $projectDescription, projectLeadUserId: $projectLeadUserId, projectStatus: $projectStatus, projectTeamId: $projectTeamId, createdAt: $createdAt, userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEntityImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.projectDescription, projectDescription) ||
                other.projectDescription == projectDescription) &&
            (identical(other.projectLeadUserId, projectLeadUserId) ||
                other.projectLeadUserId == projectLeadUserId) &&
            (identical(other.projectStatus, projectStatus) ||
                other.projectStatus == projectStatus) &&
            (identical(other.projectTeamId, projectTeamId) ||
                other.projectTeamId == projectTeamId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectId,
      projectName,
      projectDescription,
      projectLeadUserId,
      projectStatus,
      projectTeamId,
      createdAt,
      userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEntityImplCopyWith<_$ProjectEntityImpl> get copyWith =>
      __$$ProjectEntityImplCopyWithImpl<_$ProjectEntityImpl>(this, _$identity);
}

abstract class _ProjectEntity implements ProjectEntity {
  factory _ProjectEntity(
      {required final int projectId,
      required final String projectName,
      required final String projectDescription,
      required final String projectLeadUserId,
      required final String projectStatus,
      required final int projectTeamId,
      required final String createdAt,
      required final UserModel? userModel}) = _$ProjectEntityImpl;

  @override
  int get projectId;
  @override
  String get projectName;
  @override
  String get projectDescription;
  @override
  String get projectLeadUserId;
  @override
  String get projectStatus;
  @override
  int get projectTeamId;
  @override
  String get createdAt;
  @override
  UserModel? get userModel;
  @override
  @JsonKey(ignore: true)
  _$$ProjectEntityImplCopyWith<_$ProjectEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
