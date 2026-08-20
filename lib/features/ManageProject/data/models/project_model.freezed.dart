// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) {
  return _ProjectModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectModel {
  @JsonKey(name: "projectId")
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: "projectName")
  String get projectName => throw _privateConstructorUsedError;
  @JsonKey(name: "projectDescription")
  String get projectDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "projectUserLeadId")
  String get projectUserLeadId => throw _privateConstructorUsedError;
  @JsonKey(name: "projectStatus")
  String get projectStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "projectTeamId")
  int get projectTeamId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectModelCopyWith<ProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectModelCopyWith<$Res> {
  factory $ProjectModelCopyWith(
          ProjectModel value, $Res Function(ProjectModel) then) =
      _$ProjectModelCopyWithImpl<$Res, ProjectModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "projectId") int projectId,
      @JsonKey(name: "projectName") String projectName,
      @JsonKey(name: "projectDescription") String projectDescription,
      @JsonKey(name: "projectUserLeadId") String projectUserLeadId,
      @JsonKey(name: "projectStatus") String projectStatus,
      @JsonKey(name: "projectTeamId") int projectTeamId,
      @JsonKey(name: "createdAt") String createdAt});
}

/// @nodoc
class _$ProjectModelCopyWithImpl<$Res, $Val extends ProjectModel>
    implements $ProjectModelCopyWith<$Res> {
  _$ProjectModelCopyWithImpl(this._value, this._then);

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
    Object? projectUserLeadId = null,
    Object? projectStatus = null,
    Object? projectTeamId = null,
    Object? createdAt = null,
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
      projectUserLeadId: null == projectUserLeadId
          ? _value.projectUserLeadId
          : projectUserLeadId // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectModelImplCopyWith<$Res>
    implements $ProjectModelCopyWith<$Res> {
  factory _$$ProjectModelImplCopyWith(
          _$ProjectModelImpl value, $Res Function(_$ProjectModelImpl) then) =
      __$$ProjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "projectId") int projectId,
      @JsonKey(name: "projectName") String projectName,
      @JsonKey(name: "projectDescription") String projectDescription,
      @JsonKey(name: "projectUserLeadId") String projectUserLeadId,
      @JsonKey(name: "projectStatus") String projectStatus,
      @JsonKey(name: "projectTeamId") int projectTeamId,
      @JsonKey(name: "createdAt") String createdAt});
}

/// @nodoc
class __$$ProjectModelImplCopyWithImpl<$Res>
    extends _$ProjectModelCopyWithImpl<$Res, _$ProjectModelImpl>
    implements _$$ProjectModelImplCopyWith<$Res> {
  __$$ProjectModelImplCopyWithImpl(
      _$ProjectModelImpl _value, $Res Function(_$ProjectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? projectDescription = null,
    Object? projectUserLeadId = null,
    Object? projectStatus = null,
    Object? projectTeamId = null,
    Object? createdAt = null,
  }) {
    return _then(_$ProjectModelImpl(
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
      projectUserLeadId: null == projectUserLeadId
          ? _value.projectUserLeadId
          : projectUserLeadId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectModelImpl implements _ProjectModel {
  _$ProjectModelImpl(
      {@JsonKey(name: "projectId") required this.projectId,
      @JsonKey(name: "projectName") required this.projectName,
      @JsonKey(name: "projectDescription") required this.projectDescription,
      @JsonKey(name: "projectUserLeadId") required this.projectUserLeadId,
      @JsonKey(name: "projectStatus") required this.projectStatus,
      @JsonKey(name: "projectTeamId") required this.projectTeamId,
      @JsonKey(name: "createdAt") required this.createdAt});

  factory _$ProjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectModelImplFromJson(json);

  @override
  @JsonKey(name: "projectId")
  final int projectId;
  @override
  @JsonKey(name: "projectName")
  final String projectName;
  @override
  @JsonKey(name: "projectDescription")
  final String projectDescription;
  @override
  @JsonKey(name: "projectUserLeadId")
  final String projectUserLeadId;
  @override
  @JsonKey(name: "projectStatus")
  final String projectStatus;
  @override
  @JsonKey(name: "projectTeamId")
  final int projectTeamId;
  @override
  @JsonKey(name: "createdAt")
  final String createdAt;

  @override
  String toString() {
    return 'ProjectModel(projectId: $projectId, projectName: $projectName, projectDescription: $projectDescription, projectUserLeadId: $projectUserLeadId, projectStatus: $projectStatus, projectTeamId: $projectTeamId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectModelImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.projectDescription, projectDescription) ||
                other.projectDescription == projectDescription) &&
            (identical(other.projectUserLeadId, projectUserLeadId) ||
                other.projectUserLeadId == projectUserLeadId) &&
            (identical(other.projectStatus, projectStatus) ||
                other.projectStatus == projectStatus) &&
            (identical(other.projectTeamId, projectTeamId) ||
                other.projectTeamId == projectTeamId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectId,
      projectName,
      projectDescription,
      projectUserLeadId,
      projectStatus,
      projectTeamId,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectModelImplCopyWith<_$ProjectModelImpl> get copyWith =>
      __$$ProjectModelImplCopyWithImpl<_$ProjectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectModel implements ProjectModel {
  factory _ProjectModel(
          {@JsonKey(name: "projectId") required final int projectId,
          @JsonKey(name: "projectName") required final String projectName,
          @JsonKey(name: "projectDescription")
          required final String projectDescription,
          @JsonKey(name: "projectUserLeadId")
          required final String projectUserLeadId,
          @JsonKey(name: "projectStatus") required final String projectStatus,
          @JsonKey(name: "projectTeamId") required final int projectTeamId,
          @JsonKey(name: "createdAt") required final String createdAt}) =
      _$ProjectModelImpl;

  factory _ProjectModel.fromJson(Map<String, dynamic> json) =
      _$ProjectModelImpl.fromJson;

  @override
  @JsonKey(name: "projectId")
  int get projectId;
  @override
  @JsonKey(name: "projectName")
  String get projectName;
  @override
  @JsonKey(name: "projectDescription")
  String get projectDescription;
  @override
  @JsonKey(name: "projectUserLeadId")
  String get projectUserLeadId;
  @override
  @JsonKey(name: "projectStatus")
  String get projectStatus;
  @override
  @JsonKey(name: "projectTeamId")
  int get projectTeamId;
  @override
  @JsonKey(name: "createdAt")
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ProjectModelImplCopyWith<_$ProjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
