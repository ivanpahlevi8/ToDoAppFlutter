// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectSummaryModel _$ProjectSummaryModelFromJson(Map<String, dynamic> json) {
  return _ProjectSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectSummaryModel {
  @JsonKey(name: "projectInvolvedNumber")
  int get projectInvolvedNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "projectLeadNumber")
  int get projectLeadNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "projectMemberNumber")
  int get projectNumberMember => throw _privateConstructorUsedError;
  @JsonKey(name: "topThreeProjectAsMember")
  List<ProjectModel> get topThreeProjectAsMember =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "topThreeProjectAsLeader")
  List<ProjectModel> get topThreeProjectAsLeader =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectSummaryModelCopyWith<ProjectSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSummaryModelCopyWith<$Res> {
  factory $ProjectSummaryModelCopyWith(
          ProjectSummaryModel value, $Res Function(ProjectSummaryModel) then) =
      _$ProjectSummaryModelCopyWithImpl<$Res, ProjectSummaryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "projectInvolvedNumber") int projectInvolvedNumber,
      @JsonKey(name: "projectLeadNumber") int projectLeadNumber,
      @JsonKey(name: "projectMemberNumber") int projectNumberMember,
      @JsonKey(name: "topThreeProjectAsMember")
      List<ProjectModel> topThreeProjectAsMember,
      @JsonKey(name: "topThreeProjectAsLeader")
      List<ProjectModel> topThreeProjectAsLeader});
}

/// @nodoc
class _$ProjectSummaryModelCopyWithImpl<$Res, $Val extends ProjectSummaryModel>
    implements $ProjectSummaryModelCopyWith<$Res> {
  _$ProjectSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectInvolvedNumber = null,
    Object? projectLeadNumber = null,
    Object? projectNumberMember = null,
    Object? topThreeProjectAsMember = null,
    Object? topThreeProjectAsLeader = null,
  }) {
    return _then(_value.copyWith(
      projectInvolvedNumber: null == projectInvolvedNumber
          ? _value.projectInvolvedNumber
          : projectInvolvedNumber // ignore: cast_nullable_to_non_nullable
              as int,
      projectLeadNumber: null == projectLeadNumber
          ? _value.projectLeadNumber
          : projectLeadNumber // ignore: cast_nullable_to_non_nullable
              as int,
      projectNumberMember: null == projectNumberMember
          ? _value.projectNumberMember
          : projectNumberMember // ignore: cast_nullable_to_non_nullable
              as int,
      topThreeProjectAsMember: null == topThreeProjectAsMember
          ? _value.topThreeProjectAsMember
          : topThreeProjectAsMember // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
      topThreeProjectAsLeader: null == topThreeProjectAsLeader
          ? _value.topThreeProjectAsLeader
          : topThreeProjectAsLeader // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectSummaryModelImplCopyWith<$Res>
    implements $ProjectSummaryModelCopyWith<$Res> {
  factory _$$ProjectSummaryModelImplCopyWith(_$ProjectSummaryModelImpl value,
          $Res Function(_$ProjectSummaryModelImpl) then) =
      __$$ProjectSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "projectInvolvedNumber") int projectInvolvedNumber,
      @JsonKey(name: "projectLeadNumber") int projectLeadNumber,
      @JsonKey(name: "projectMemberNumber") int projectNumberMember,
      @JsonKey(name: "topThreeProjectAsMember")
      List<ProjectModel> topThreeProjectAsMember,
      @JsonKey(name: "topThreeProjectAsLeader")
      List<ProjectModel> topThreeProjectAsLeader});
}

/// @nodoc
class __$$ProjectSummaryModelImplCopyWithImpl<$Res>
    extends _$ProjectSummaryModelCopyWithImpl<$Res, _$ProjectSummaryModelImpl>
    implements _$$ProjectSummaryModelImplCopyWith<$Res> {
  __$$ProjectSummaryModelImplCopyWithImpl(_$ProjectSummaryModelImpl _value,
      $Res Function(_$ProjectSummaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectInvolvedNumber = null,
    Object? projectLeadNumber = null,
    Object? projectNumberMember = null,
    Object? topThreeProjectAsMember = null,
    Object? topThreeProjectAsLeader = null,
  }) {
    return _then(_$ProjectSummaryModelImpl(
      projectInvolvedNumber: null == projectInvolvedNumber
          ? _value.projectInvolvedNumber
          : projectInvolvedNumber // ignore: cast_nullable_to_non_nullable
              as int,
      projectLeadNumber: null == projectLeadNumber
          ? _value.projectLeadNumber
          : projectLeadNumber // ignore: cast_nullable_to_non_nullable
              as int,
      projectNumberMember: null == projectNumberMember
          ? _value.projectNumberMember
          : projectNumberMember // ignore: cast_nullable_to_non_nullable
              as int,
      topThreeProjectAsMember: null == topThreeProjectAsMember
          ? _value._topThreeProjectAsMember
          : topThreeProjectAsMember // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
      topThreeProjectAsLeader: null == topThreeProjectAsLeader
          ? _value._topThreeProjectAsLeader
          : topThreeProjectAsLeader // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectSummaryModelImpl implements _ProjectSummaryModel {
  _$ProjectSummaryModelImpl(
      {@JsonKey(name: "projectInvolvedNumber")
      required this.projectInvolvedNumber,
      @JsonKey(name: "projectLeadNumber") required this.projectLeadNumber,
      @JsonKey(name: "projectMemberNumber") required this.projectNumberMember,
      @JsonKey(name: "topThreeProjectAsMember")
      required final List<ProjectModel> topThreeProjectAsMember,
      @JsonKey(name: "topThreeProjectAsLeader")
      required final List<ProjectModel> topThreeProjectAsLeader})
      : _topThreeProjectAsMember = topThreeProjectAsMember,
        _topThreeProjectAsLeader = topThreeProjectAsLeader;

  factory _$ProjectSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectSummaryModelImplFromJson(json);

  @override
  @JsonKey(name: "projectInvolvedNumber")
  final int projectInvolvedNumber;
  @override
  @JsonKey(name: "projectLeadNumber")
  final int projectLeadNumber;
  @override
  @JsonKey(name: "projectMemberNumber")
  final int projectNumberMember;
  final List<ProjectModel> _topThreeProjectAsMember;
  @override
  @JsonKey(name: "topThreeProjectAsMember")
  List<ProjectModel> get topThreeProjectAsMember {
    if (_topThreeProjectAsMember is EqualUnmodifiableListView)
      return _topThreeProjectAsMember;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topThreeProjectAsMember);
  }

  final List<ProjectModel> _topThreeProjectAsLeader;
  @override
  @JsonKey(name: "topThreeProjectAsLeader")
  List<ProjectModel> get topThreeProjectAsLeader {
    if (_topThreeProjectAsLeader is EqualUnmodifiableListView)
      return _topThreeProjectAsLeader;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topThreeProjectAsLeader);
  }

  @override
  String toString() {
    return 'ProjectSummaryModel(projectInvolvedNumber: $projectInvolvedNumber, projectLeadNumber: $projectLeadNumber, projectNumberMember: $projectNumberMember, topThreeProjectAsMember: $topThreeProjectAsMember, topThreeProjectAsLeader: $topThreeProjectAsLeader)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSummaryModelImpl &&
            (identical(other.projectInvolvedNumber, projectInvolvedNumber) ||
                other.projectInvolvedNumber == projectInvolvedNumber) &&
            (identical(other.projectLeadNumber, projectLeadNumber) ||
                other.projectLeadNumber == projectLeadNumber) &&
            (identical(other.projectNumberMember, projectNumberMember) ||
                other.projectNumberMember == projectNumberMember) &&
            const DeepCollectionEquality().equals(
                other._topThreeProjectAsMember, _topThreeProjectAsMember) &&
            const DeepCollectionEquality().equals(
                other._topThreeProjectAsLeader, _topThreeProjectAsLeader));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectInvolvedNumber,
      projectLeadNumber,
      projectNumberMember,
      const DeepCollectionEquality().hash(_topThreeProjectAsMember),
      const DeepCollectionEquality().hash(_topThreeProjectAsLeader));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSummaryModelImplCopyWith<_$ProjectSummaryModelImpl> get copyWith =>
      __$$ProjectSummaryModelImplCopyWithImpl<_$ProjectSummaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectSummaryModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectSummaryModel implements ProjectSummaryModel {
  factory _ProjectSummaryModel(
      {@JsonKey(name: "projectInvolvedNumber")
      required final int projectInvolvedNumber,
      @JsonKey(name: "projectLeadNumber") required final int projectLeadNumber,
      @JsonKey(name: "projectMemberNumber")
      required final int projectNumberMember,
      @JsonKey(name: "topThreeProjectAsMember")
      required final List<ProjectModel> topThreeProjectAsMember,
      @JsonKey(name: "topThreeProjectAsLeader")
      required final List<ProjectModel>
          topThreeProjectAsLeader}) = _$ProjectSummaryModelImpl;

  factory _ProjectSummaryModel.fromJson(Map<String, dynamic> json) =
      _$ProjectSummaryModelImpl.fromJson;

  @override
  @JsonKey(name: "projectInvolvedNumber")
  int get projectInvolvedNumber;
  @override
  @JsonKey(name: "projectLeadNumber")
  int get projectLeadNumber;
  @override
  @JsonKey(name: "projectMemberNumber")
  int get projectNumberMember;
  @override
  @JsonKey(name: "topThreeProjectAsMember")
  List<ProjectModel> get topThreeProjectAsMember;
  @override
  @JsonKey(name: "topThreeProjectAsLeader")
  List<ProjectModel> get topThreeProjectAsLeader;
  @override
  @JsonKey(ignore: true)
  _$$ProjectSummaryModelImplCopyWith<_$ProjectSummaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
