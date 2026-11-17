// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_chart_performance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectChartPerformanceModel _$ProjectChartPerformanceModelFromJson(
    Map<String, dynamic> json) {
  return _ProjectChartPerformanceModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectChartPerformanceModel {
  @JsonKey(name: "projectLeads")
  List<ChartObjectModel> get projectLeads => throw _privateConstructorUsedError;
  @JsonKey(name: "projectAsMember")
  List<ChartObjectModel> get projectMember =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectChartPerformanceModelCopyWith<ProjectChartPerformanceModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectChartPerformanceModelCopyWith<$Res> {
  factory $ProjectChartPerformanceModelCopyWith(
          ProjectChartPerformanceModel value,
          $Res Function(ProjectChartPerformanceModel) then) =
      _$ProjectChartPerformanceModelCopyWithImpl<$Res,
          ProjectChartPerformanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "projectLeads") List<ChartObjectModel> projectLeads,
      @JsonKey(name: "projectAsMember") List<ChartObjectModel> projectMember});
}

/// @nodoc
class _$ProjectChartPerformanceModelCopyWithImpl<$Res,
        $Val extends ProjectChartPerformanceModel>
    implements $ProjectChartPerformanceModelCopyWith<$Res> {
  _$ProjectChartPerformanceModelCopyWithImpl(this._value, this._then);

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
              as List<ChartObjectModel>,
      projectMember: null == projectMember
          ? _value.projectMember
          : projectMember // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectChartPerformanceModelImplCopyWith<$Res>
    implements $ProjectChartPerformanceModelCopyWith<$Res> {
  factory _$$ProjectChartPerformanceModelImplCopyWith(
          _$ProjectChartPerformanceModelImpl value,
          $Res Function(_$ProjectChartPerformanceModelImpl) then) =
      __$$ProjectChartPerformanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "projectLeads") List<ChartObjectModel> projectLeads,
      @JsonKey(name: "projectAsMember") List<ChartObjectModel> projectMember});
}

/// @nodoc
class __$$ProjectChartPerformanceModelImplCopyWithImpl<$Res>
    extends _$ProjectChartPerformanceModelCopyWithImpl<$Res,
        _$ProjectChartPerformanceModelImpl>
    implements _$$ProjectChartPerformanceModelImplCopyWith<$Res> {
  __$$ProjectChartPerformanceModelImplCopyWithImpl(
      _$ProjectChartPerformanceModelImpl _value,
      $Res Function(_$ProjectChartPerformanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectLeads = null,
    Object? projectMember = null,
  }) {
    return _then(_$ProjectChartPerformanceModelImpl(
      projectLeads: null == projectLeads
          ? _value._projectLeads
          : projectLeads // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
      projectMember: null == projectMember
          ? _value._projectMember
          : projectMember // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectChartPerformanceModelImpl
    implements _ProjectChartPerformanceModel {
  _$ProjectChartPerformanceModelImpl(
      {@JsonKey(name: "projectLeads")
      required final List<ChartObjectModel> projectLeads,
      @JsonKey(name: "projectAsMember")
      required final List<ChartObjectModel> projectMember})
      : _projectLeads = projectLeads,
        _projectMember = projectMember;

  factory _$ProjectChartPerformanceModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProjectChartPerformanceModelImplFromJson(json);

  final List<ChartObjectModel> _projectLeads;
  @override
  @JsonKey(name: "projectLeads")
  List<ChartObjectModel> get projectLeads {
    if (_projectLeads is EqualUnmodifiableListView) return _projectLeads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectLeads);
  }

  final List<ChartObjectModel> _projectMember;
  @override
  @JsonKey(name: "projectAsMember")
  List<ChartObjectModel> get projectMember {
    if (_projectMember is EqualUnmodifiableListView) return _projectMember;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectMember);
  }

  @override
  String toString() {
    return 'ProjectChartPerformanceModel(projectLeads: $projectLeads, projectMember: $projectMember)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectChartPerformanceModelImpl &&
            const DeepCollectionEquality()
                .equals(other._projectLeads, _projectLeads) &&
            const DeepCollectionEquality()
                .equals(other._projectMember, _projectMember));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projectLeads),
      const DeepCollectionEquality().hash(_projectMember));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectChartPerformanceModelImplCopyWith<
          _$ProjectChartPerformanceModelImpl>
      get copyWith => __$$ProjectChartPerformanceModelImplCopyWithImpl<
          _$ProjectChartPerformanceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectChartPerformanceModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectChartPerformanceModel
    implements ProjectChartPerformanceModel {
  factory _ProjectChartPerformanceModel(
          {@JsonKey(name: "projectLeads")
          required final List<ChartObjectModel> projectLeads,
          @JsonKey(name: "projectAsMember")
          required final List<ChartObjectModel> projectMember}) =
      _$ProjectChartPerformanceModelImpl;

  factory _ProjectChartPerformanceModel.fromJson(Map<String, dynamic> json) =
      _$ProjectChartPerformanceModelImpl.fromJson;

  @override
  @JsonKey(name: "projectLeads")
  List<ChartObjectModel> get projectLeads;
  @override
  @JsonKey(name: "projectAsMember")
  List<ChartObjectModel> get projectMember;
  @override
  @JsonKey(ignore: true)
  _$$ProjectChartPerformanceModelImplCopyWith<
          _$ProjectChartPerformanceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
