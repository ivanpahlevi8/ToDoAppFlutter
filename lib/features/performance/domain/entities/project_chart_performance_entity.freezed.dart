// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_chart_performance_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectChartPerformanceEntity {
  List<ChartObjectEntity> get projectLeads =>
      throw _privateConstructorUsedError;
  List<ChartObjectEntity> get projectMember =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectChartPerformanceEntityCopyWith<ProjectChartPerformanceEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectChartPerformanceEntityCopyWith<$Res> {
  factory $ProjectChartPerformanceEntityCopyWith(
          ProjectChartPerformanceEntity value,
          $Res Function(ProjectChartPerformanceEntity) then) =
      _$ProjectChartPerformanceEntityCopyWithImpl<$Res,
          ProjectChartPerformanceEntity>;
  @useResult
  $Res call(
      {List<ChartObjectEntity> projectLeads,
      List<ChartObjectEntity> projectMember});
}

/// @nodoc
class _$ProjectChartPerformanceEntityCopyWithImpl<$Res,
        $Val extends ProjectChartPerformanceEntity>
    implements $ProjectChartPerformanceEntityCopyWith<$Res> {
  _$ProjectChartPerformanceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectLeads = null,
    Object? projectMember = null,
  }) {
    return _then(_value.copyWith(
      projectLeads: null == projectLeads
          ? _value.projectLeads
          : projectLeads // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
      projectMember: null == projectMember
          ? _value.projectMember
          : projectMember // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectChartPerformanceEntityImplCopyWith<$Res>
    implements $ProjectChartPerformanceEntityCopyWith<$Res> {
  factory _$$ProjectChartPerformanceEntityImplCopyWith(
          _$ProjectChartPerformanceEntityImpl value,
          $Res Function(_$ProjectChartPerformanceEntityImpl) then) =
      __$$ProjectChartPerformanceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChartObjectEntity> projectLeads,
      List<ChartObjectEntity> projectMember});
}

/// @nodoc
class __$$ProjectChartPerformanceEntityImplCopyWithImpl<$Res>
    extends _$ProjectChartPerformanceEntityCopyWithImpl<$Res,
        _$ProjectChartPerformanceEntityImpl>
    implements _$$ProjectChartPerformanceEntityImplCopyWith<$Res> {
  __$$ProjectChartPerformanceEntityImplCopyWithImpl(
      _$ProjectChartPerformanceEntityImpl _value,
      $Res Function(_$ProjectChartPerformanceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectLeads = null,
    Object? projectMember = null,
  }) {
    return _then(_$ProjectChartPerformanceEntityImpl(
      projectLeads: null == projectLeads
          ? _value._projectLeads
          : projectLeads // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
      projectMember: null == projectMember
          ? _value._projectMember
          : projectMember // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
    ));
  }
}

/// @nodoc

class _$ProjectChartPerformanceEntityImpl
    implements _ProjectChartPerformanceEntity {
  _$ProjectChartPerformanceEntityImpl(
      {required final List<ChartObjectEntity> projectLeads,
      required final List<ChartObjectEntity> projectMember})
      : _projectLeads = projectLeads,
        _projectMember = projectMember;

  final List<ChartObjectEntity> _projectLeads;
  @override
  List<ChartObjectEntity> get projectLeads {
    if (_projectLeads is EqualUnmodifiableListView) return _projectLeads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectLeads);
  }

  final List<ChartObjectEntity> _projectMember;
  @override
  List<ChartObjectEntity> get projectMember {
    if (_projectMember is EqualUnmodifiableListView) return _projectMember;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectMember);
  }

  @override
  String toString() {
    return 'ProjectChartPerformanceEntity(projectLeads: $projectLeads, projectMember: $projectMember)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectChartPerformanceEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._projectLeads, _projectLeads) &&
            const DeepCollectionEquality()
                .equals(other._projectMember, _projectMember));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projectLeads),
      const DeepCollectionEquality().hash(_projectMember));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectChartPerformanceEntityImplCopyWith<
          _$ProjectChartPerformanceEntityImpl>
      get copyWith => __$$ProjectChartPerformanceEntityImplCopyWithImpl<
          _$ProjectChartPerformanceEntityImpl>(this, _$identity);
}

abstract class _ProjectChartPerformanceEntity
    implements ProjectChartPerformanceEntity {
  factory _ProjectChartPerformanceEntity(
          {required final List<ChartObjectEntity> projectLeads,
          required final List<ChartObjectEntity> projectMember}) =
      _$ProjectChartPerformanceEntityImpl;

  @override
  List<ChartObjectEntity> get projectLeads;
  @override
  List<ChartObjectEntity> get projectMember;
  @override
  @JsonKey(ignore: true)
  _$$ProjectChartPerformanceEntityImplCopyWith<
          _$ProjectChartPerformanceEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
