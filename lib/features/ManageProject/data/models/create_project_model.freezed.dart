// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateProjectModel _$CreateProjectModelFromJson(Map<String, dynamic> json) {
  return _CreateProjectModel.fromJson(json);
}

/// @nodoc
mixin _$CreateProjectModel {
  @JsonKey(name: "projectName")
  String get projectName => throw _privateConstructorUsedError;
  @JsonKey(name: "projectDescription")
  String get projectDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "projectUserLeadId")
  String get projectUserLead => throw _privateConstructorUsedError;
  @JsonKey(name: "projectStatus")
  String get projectStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "projectTeamId")
  int get projectTeamId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProjectModelCopyWith<CreateProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectModelCopyWith<$Res> {
  factory $CreateProjectModelCopyWith(
          CreateProjectModel value, $Res Function(CreateProjectModel) then) =
      _$CreateProjectModelCopyWithImpl<$Res, CreateProjectModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "projectName") String projectName,
      @JsonKey(name: "projectDescription") String projectDescription,
      @JsonKey(name: "projectUserLeadId") String projectUserLead,
      @JsonKey(name: "projectStatus") String projectStatus,
      @JsonKey(name: "projectTeamId") int projectTeamId});
}

/// @nodoc
class _$CreateProjectModelCopyWithImpl<$Res, $Val extends CreateProjectModel>
    implements $CreateProjectModelCopyWith<$Res> {
  _$CreateProjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? projectDescription = null,
    Object? projectUserLead = null,
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
      projectUserLead: null == projectUserLead
          ? _value.projectUserLead
          : projectUserLead // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CreateProjectModelImplCopyWith<$Res>
    implements $CreateProjectModelCopyWith<$Res> {
  factory _$$CreateProjectModelImplCopyWith(_$CreateProjectModelImpl value,
          $Res Function(_$CreateProjectModelImpl) then) =
      __$$CreateProjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "projectName") String projectName,
      @JsonKey(name: "projectDescription") String projectDescription,
      @JsonKey(name: "projectUserLeadId") String projectUserLead,
      @JsonKey(name: "projectStatus") String projectStatus,
      @JsonKey(name: "projectTeamId") int projectTeamId});
}

/// @nodoc
class __$$CreateProjectModelImplCopyWithImpl<$Res>
    extends _$CreateProjectModelCopyWithImpl<$Res, _$CreateProjectModelImpl>
    implements _$$CreateProjectModelImplCopyWith<$Res> {
  __$$CreateProjectModelImplCopyWithImpl(_$CreateProjectModelImpl _value,
      $Res Function(_$CreateProjectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? projectDescription = null,
    Object? projectUserLead = null,
    Object? projectStatus = null,
    Object? projectTeamId = null,
  }) {
    return _then(_$CreateProjectModelImpl(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      projectDescription: null == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      projectUserLead: null == projectUserLead
          ? _value.projectUserLead
          : projectUserLead // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$CreateProjectModelImpl implements _CreateProjectModel {
  _$CreateProjectModelImpl(
      {@JsonKey(name: "projectName") required this.projectName,
      @JsonKey(name: "projectDescription") required this.projectDescription,
      @JsonKey(name: "projectUserLeadId") required this.projectUserLead,
      @JsonKey(name: "projectStatus") required this.projectStatus,
      @JsonKey(name: "projectTeamId") required this.projectTeamId});

  factory _$CreateProjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateProjectModelImplFromJson(json);

  @override
  @JsonKey(name: "projectName")
  final String projectName;
  @override
  @JsonKey(name: "projectDescription")
  final String projectDescription;
  @override
  @JsonKey(name: "projectUserLeadId")
  final String projectUserLead;
  @override
  @JsonKey(name: "projectStatus")
  final String projectStatus;
  @override
  @JsonKey(name: "projectTeamId")
  final int projectTeamId;

  @override
  String toString() {
    return 'CreateProjectModel(projectName: $projectName, projectDescription: $projectDescription, projectUserLead: $projectUserLead, projectStatus: $projectStatus, projectTeamId: $projectTeamId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProjectModelImpl &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.projectDescription, projectDescription) ||
                other.projectDescription == projectDescription) &&
            (identical(other.projectUserLead, projectUserLead) ||
                other.projectUserLead == projectUserLead) &&
            (identical(other.projectStatus, projectStatus) ||
                other.projectStatus == projectStatus) &&
            (identical(other.projectTeamId, projectTeamId) ||
                other.projectTeamId == projectTeamId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, projectName, projectDescription,
      projectUserLead, projectStatus, projectTeamId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProjectModelImplCopyWith<_$CreateProjectModelImpl> get copyWith =>
      __$$CreateProjectModelImplCopyWithImpl<_$CreateProjectModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProjectModelImplToJson(
      this,
    );
  }
}

abstract class _CreateProjectModel implements CreateProjectModel {
  factory _CreateProjectModel(
      {@JsonKey(name: "projectName") required final String projectName,
      @JsonKey(name: "projectDescription")
      required final String projectDescription,
      @JsonKey(name: "projectUserLeadId") required final String projectUserLead,
      @JsonKey(name: "projectStatus") required final String projectStatus,
      @JsonKey(name: "projectTeamId")
      required final int projectTeamId}) = _$CreateProjectModelImpl;

  factory _CreateProjectModel.fromJson(Map<String, dynamic> json) =
      _$CreateProjectModelImpl.fromJson;

  @override
  @JsonKey(name: "projectName")
  String get projectName;
  @override
  @JsonKey(name: "projectDescription")
  String get projectDescription;
  @override
  @JsonKey(name: "projectUserLeadId")
  String get projectUserLead;
  @override
  @JsonKey(name: "projectStatus")
  String get projectStatus;
  @override
  @JsonKey(name: "projectTeamId")
  int get projectTeamId;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectModelImplCopyWith<_$CreateProjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
