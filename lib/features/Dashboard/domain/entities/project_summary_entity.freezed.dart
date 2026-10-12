// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_summary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectSummaryEntity {
  int get projectInvolvedNumber => throw _privateConstructorUsedError;
  int get projectLeadNumber => throw _privateConstructorUsedError;
  int get projectMemberNumber => throw _privateConstructorUsedError;
  List<ProjectEntity> get topThreeProjectAsMember =>
      throw _privateConstructorUsedError;
  List<ProjectEntity> get topThreeProjectAsLeader =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectSummaryEntityCopyWith<ProjectSummaryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSummaryEntityCopyWith<$Res> {
  factory $ProjectSummaryEntityCopyWith(ProjectSummaryEntity value,
          $Res Function(ProjectSummaryEntity) then) =
      _$ProjectSummaryEntityCopyWithImpl<$Res, ProjectSummaryEntity>;
  @useResult
  $Res call(
      {int projectInvolvedNumber,
      int projectLeadNumber,
      int projectMemberNumber,
      List<ProjectEntity> topThreeProjectAsMember,
      List<ProjectEntity> topThreeProjectAsLeader});
}

/// @nodoc
class _$ProjectSummaryEntityCopyWithImpl<$Res,
        $Val extends ProjectSummaryEntity>
    implements $ProjectSummaryEntityCopyWith<$Res> {
  _$ProjectSummaryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectInvolvedNumber = null,
    Object? projectLeadNumber = null,
    Object? projectMemberNumber = null,
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
      projectMemberNumber: null == projectMemberNumber
          ? _value.projectMemberNumber
          : projectMemberNumber // ignore: cast_nullable_to_non_nullable
              as int,
      topThreeProjectAsMember: null == topThreeProjectAsMember
          ? _value.topThreeProjectAsMember
          : topThreeProjectAsMember // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
      topThreeProjectAsLeader: null == topThreeProjectAsLeader
          ? _value.topThreeProjectAsLeader
          : topThreeProjectAsLeader // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectSummaryEntityImplCopyWith<$Res>
    implements $ProjectSummaryEntityCopyWith<$Res> {
  factory _$$ProjectSummaryEntityImplCopyWith(_$ProjectSummaryEntityImpl value,
          $Res Function(_$ProjectSummaryEntityImpl) then) =
      __$$ProjectSummaryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int projectInvolvedNumber,
      int projectLeadNumber,
      int projectMemberNumber,
      List<ProjectEntity> topThreeProjectAsMember,
      List<ProjectEntity> topThreeProjectAsLeader});
}

/// @nodoc
class __$$ProjectSummaryEntityImplCopyWithImpl<$Res>
    extends _$ProjectSummaryEntityCopyWithImpl<$Res, _$ProjectSummaryEntityImpl>
    implements _$$ProjectSummaryEntityImplCopyWith<$Res> {
  __$$ProjectSummaryEntityImplCopyWithImpl(_$ProjectSummaryEntityImpl _value,
      $Res Function(_$ProjectSummaryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectInvolvedNumber = null,
    Object? projectLeadNumber = null,
    Object? projectMemberNumber = null,
    Object? topThreeProjectAsMember = null,
    Object? topThreeProjectAsLeader = null,
  }) {
    return _then(_$ProjectSummaryEntityImpl(
      projectInvolvedNumber: null == projectInvolvedNumber
          ? _value.projectInvolvedNumber
          : projectInvolvedNumber // ignore: cast_nullable_to_non_nullable
              as int,
      projectLeadNumber: null == projectLeadNumber
          ? _value.projectLeadNumber
          : projectLeadNumber // ignore: cast_nullable_to_non_nullable
              as int,
      projectMemberNumber: null == projectMemberNumber
          ? _value.projectMemberNumber
          : projectMemberNumber // ignore: cast_nullable_to_non_nullable
              as int,
      topThreeProjectAsMember: null == topThreeProjectAsMember
          ? _value._topThreeProjectAsMember
          : topThreeProjectAsMember // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
      topThreeProjectAsLeader: null == topThreeProjectAsLeader
          ? _value._topThreeProjectAsLeader
          : topThreeProjectAsLeader // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
    ));
  }
}

/// @nodoc

class _$ProjectSummaryEntityImpl implements _ProjectSummaryEntity {
  _$ProjectSummaryEntityImpl(
      {required this.projectInvolvedNumber,
      required this.projectLeadNumber,
      required this.projectMemberNumber,
      required final List<ProjectEntity> topThreeProjectAsMember,
      required final List<ProjectEntity> topThreeProjectAsLeader})
      : _topThreeProjectAsMember = topThreeProjectAsMember,
        _topThreeProjectAsLeader = topThreeProjectAsLeader;

  @override
  final int projectInvolvedNumber;
  @override
  final int projectLeadNumber;
  @override
  final int projectMemberNumber;
  final List<ProjectEntity> _topThreeProjectAsMember;
  @override
  List<ProjectEntity> get topThreeProjectAsMember {
    if (_topThreeProjectAsMember is EqualUnmodifiableListView)
      return _topThreeProjectAsMember;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topThreeProjectAsMember);
  }

  final List<ProjectEntity> _topThreeProjectAsLeader;
  @override
  List<ProjectEntity> get topThreeProjectAsLeader {
    if (_topThreeProjectAsLeader is EqualUnmodifiableListView)
      return _topThreeProjectAsLeader;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topThreeProjectAsLeader);
  }

  @override
  String toString() {
    return 'ProjectSummaryEntity(projectInvolvedNumber: $projectInvolvedNumber, projectLeadNumber: $projectLeadNumber, projectMemberNumber: $projectMemberNumber, topThreeProjectAsMember: $topThreeProjectAsMember, topThreeProjectAsLeader: $topThreeProjectAsLeader)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSummaryEntityImpl &&
            (identical(other.projectInvolvedNumber, projectInvolvedNumber) ||
                other.projectInvolvedNumber == projectInvolvedNumber) &&
            (identical(other.projectLeadNumber, projectLeadNumber) ||
                other.projectLeadNumber == projectLeadNumber) &&
            (identical(other.projectMemberNumber, projectMemberNumber) ||
                other.projectMemberNumber == projectMemberNumber) &&
            const DeepCollectionEquality().equals(
                other._topThreeProjectAsMember, _topThreeProjectAsMember) &&
            const DeepCollectionEquality().equals(
                other._topThreeProjectAsLeader, _topThreeProjectAsLeader));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectInvolvedNumber,
      projectLeadNumber,
      projectMemberNumber,
      const DeepCollectionEquality().hash(_topThreeProjectAsMember),
      const DeepCollectionEquality().hash(_topThreeProjectAsLeader));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSummaryEntityImplCopyWith<_$ProjectSummaryEntityImpl>
      get copyWith =>
          __$$ProjectSummaryEntityImplCopyWithImpl<_$ProjectSummaryEntityImpl>(
              this, _$identity);
}

abstract class _ProjectSummaryEntity implements ProjectSummaryEntity {
  factory _ProjectSummaryEntity(
          {required final int projectInvolvedNumber,
          required final int projectLeadNumber,
          required final int projectMemberNumber,
          required final List<ProjectEntity> topThreeProjectAsMember,
          required final List<ProjectEntity> topThreeProjectAsLeader}) =
      _$ProjectSummaryEntityImpl;

  @override
  int get projectInvolvedNumber;
  @override
  int get projectLeadNumber;
  @override
  int get projectMemberNumber;
  @override
  List<ProjectEntity> get topThreeProjectAsMember;
  @override
  List<ProjectEntity> get topThreeProjectAsLeader;
  @override
  @JsonKey(ignore: true)
  _$$ProjectSummaryEntityImplCopyWith<_$ProjectSummaryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
