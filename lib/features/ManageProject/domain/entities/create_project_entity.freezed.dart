// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_project_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateProjectEntity {
  String get projectName => throw _privateConstructorUsedError;
  String get projectDescription => throw _privateConstructorUsedError;
  String get projectUserLeadId => throw _privateConstructorUsedError;
  String get projectStatus => throw _privateConstructorUsedError;
  int get projectTeamId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateProjectEntityCopyWith<CreateProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectEntityCopyWith<$Res> {
  factory $CreateProjectEntityCopyWith(
          CreateProjectEntity value, $Res Function(CreateProjectEntity) then) =
      _$CreateProjectEntityCopyWithImpl<$Res, CreateProjectEntity>;
  @useResult
  $Res call(
      {String projectName,
      String projectDescription,
      String projectUserLeadId,
      String projectStatus,
      int projectTeamId});
}

/// @nodoc
class _$CreateProjectEntityCopyWithImpl<$Res, $Val extends CreateProjectEntity>
    implements $CreateProjectEntityCopyWith<$Res> {
  _$CreateProjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? projectDescription = null,
    Object? projectUserLeadId = null,
    Object? projectStatus = null,
    Object? projectTeamId = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProjectEntityImplCopyWith<$Res>
    implements $CreateProjectEntityCopyWith<$Res> {
  factory _$$CreateProjectEntityImplCopyWith(_$CreateProjectEntityImpl value,
          $Res Function(_$CreateProjectEntityImpl) then) =
      __$$CreateProjectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectName,
      String projectDescription,
      String projectUserLeadId,
      String projectStatus,
      int projectTeamId});
}

/// @nodoc
class __$$CreateProjectEntityImplCopyWithImpl<$Res>
    extends _$CreateProjectEntityCopyWithImpl<$Res, _$CreateProjectEntityImpl>
    implements _$$CreateProjectEntityImplCopyWith<$Res> {
  __$$CreateProjectEntityImplCopyWithImpl(_$CreateProjectEntityImpl _value,
      $Res Function(_$CreateProjectEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? projectDescription = null,
    Object? projectUserLeadId = null,
    Object? projectStatus = null,
    Object? projectTeamId = null,
  }) {
    return _then(_$CreateProjectEntityImpl(
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
    ));
  }
}

/// @nodoc

class _$CreateProjectEntityImpl implements _CreateProjectEntity {
  _$CreateProjectEntityImpl(
      {required this.projectName,
      required this.projectDescription,
      required this.projectUserLeadId,
      required this.projectStatus,
      required this.projectTeamId});

  @override
  final String projectName;
  @override
  final String projectDescription;
  @override
  final String projectUserLeadId;
  @override
  final String projectStatus;
  @override
  final int projectTeamId;

  @override
  String toString() {
    return 'CreateProjectEntity(projectName: $projectName, projectDescription: $projectDescription, projectUserLeadId: $projectUserLeadId, projectStatus: $projectStatus, projectTeamId: $projectTeamId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProjectEntityImpl &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.projectDescription, projectDescription) ||
                other.projectDescription == projectDescription) &&
            (identical(other.projectUserLeadId, projectUserLeadId) ||
                other.projectUserLeadId == projectUserLeadId) &&
            (identical(other.projectStatus, projectStatus) ||
                other.projectStatus == projectStatus) &&
            (identical(other.projectTeamId, projectTeamId) ||
                other.projectTeamId == projectTeamId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectName, projectDescription,
      projectUserLeadId, projectStatus, projectTeamId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProjectEntityImplCopyWith<_$CreateProjectEntityImpl> get copyWith =>
      __$$CreateProjectEntityImplCopyWithImpl<_$CreateProjectEntityImpl>(
          this, _$identity);
}

abstract class _CreateProjectEntity implements CreateProjectEntity {
  factory _CreateProjectEntity(
      {required final String projectName,
      required final String projectDescription,
      required final String projectUserLeadId,
      required final String projectStatus,
      required final int projectTeamId}) = _$CreateProjectEntityImpl;

  @override
  String get projectName;
  @override
  String get projectDescription;
  @override
  String get projectUserLeadId;
  @override
  String get projectStatus;
  @override
  int get projectTeamId;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectEntityImplCopyWith<_$CreateProjectEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
