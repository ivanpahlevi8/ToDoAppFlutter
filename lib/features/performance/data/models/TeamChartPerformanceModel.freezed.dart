// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'TeamChartPerformanceModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamChartPerformanceModel _$TeamChartPerformanceModelFromJson(
    Map<String, dynamic> json) {
  return _TeamChartPerformanceModel.fromJson(json);
}

/// @nodoc
mixin _$TeamChartPerformanceModel {
  @JsonKey(name: "teamNumberAsLead")
  List<ChartObjectModel> get teamsAsLeader =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "teamNumberAsMember")
  List<ChartObjectModel> get teamsAsMember =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamChartPerformanceModelCopyWith<TeamChartPerformanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamChartPerformanceModelCopyWith<$Res> {
  factory $TeamChartPerformanceModelCopyWith(TeamChartPerformanceModel value,
          $Res Function(TeamChartPerformanceModel) then) =
      _$TeamChartPerformanceModelCopyWithImpl<$Res, TeamChartPerformanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "teamNumberAsLead") List<ChartObjectModel> teamsAsLeader,
      @JsonKey(name: "teamNumberAsMember")
      List<ChartObjectModel> teamsAsMember});
}

/// @nodoc
class _$TeamChartPerformanceModelCopyWithImpl<$Res,
        $Val extends TeamChartPerformanceModel>
    implements $TeamChartPerformanceModelCopyWith<$Res> {
  _$TeamChartPerformanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamsAsLeader = null,
    Object? teamsAsMember = null,
  }) {
    return _then(_value.copyWith(
      teamsAsLeader: null == teamsAsLeader
          ? _value.teamsAsLeader
          : teamsAsLeader // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
      teamsAsMember: null == teamsAsMember
          ? _value.teamsAsMember
          : teamsAsMember // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamChartPerformanceModelImplCopyWith<$Res>
    implements $TeamChartPerformanceModelCopyWith<$Res> {
  factory _$$TeamChartPerformanceModelImplCopyWith(
          _$TeamChartPerformanceModelImpl value,
          $Res Function(_$TeamChartPerformanceModelImpl) then) =
      __$$TeamChartPerformanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "teamNumberAsLead") List<ChartObjectModel> teamsAsLeader,
      @JsonKey(name: "teamNumberAsMember")
      List<ChartObjectModel> teamsAsMember});
}

/// @nodoc
class __$$TeamChartPerformanceModelImplCopyWithImpl<$Res>
    extends _$TeamChartPerformanceModelCopyWithImpl<$Res,
        _$TeamChartPerformanceModelImpl>
    implements _$$TeamChartPerformanceModelImplCopyWith<$Res> {
  __$$TeamChartPerformanceModelImplCopyWithImpl(
      _$TeamChartPerformanceModelImpl _value,
      $Res Function(_$TeamChartPerformanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamsAsLeader = null,
    Object? teamsAsMember = null,
  }) {
    return _then(_$TeamChartPerformanceModelImpl(
      teamsAsLeader: null == teamsAsLeader
          ? _value._teamsAsLeader
          : teamsAsLeader // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
      teamsAsMember: null == teamsAsMember
          ? _value._teamsAsMember
          : teamsAsMember // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamChartPerformanceModelImpl implements _TeamChartPerformanceModel {
  _$TeamChartPerformanceModelImpl(
      {@JsonKey(name: "teamNumberAsLead")
      required final List<ChartObjectModel> teamsAsLeader,
      @JsonKey(name: "teamNumberAsMember")
      required final List<ChartObjectModel> teamsAsMember})
      : _teamsAsLeader = teamsAsLeader,
        _teamsAsMember = teamsAsMember;

  factory _$TeamChartPerformanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamChartPerformanceModelImplFromJson(json);

  final List<ChartObjectModel> _teamsAsLeader;
  @override
  @JsonKey(name: "teamNumberAsLead")
  List<ChartObjectModel> get teamsAsLeader {
    if (_teamsAsLeader is EqualUnmodifiableListView) return _teamsAsLeader;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teamsAsLeader);
  }

  final List<ChartObjectModel> _teamsAsMember;
  @override
  @JsonKey(name: "teamNumberAsMember")
  List<ChartObjectModel> get teamsAsMember {
    if (_teamsAsMember is EqualUnmodifiableListView) return _teamsAsMember;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teamsAsMember);
  }

  @override
  String toString() {
    return 'TeamChartPerformanceModel(teamsAsLeader: $teamsAsLeader, teamsAsMember: $teamsAsMember)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamChartPerformanceModelImpl &&
            const DeepCollectionEquality()
                .equals(other._teamsAsLeader, _teamsAsLeader) &&
            const DeepCollectionEquality()
                .equals(other._teamsAsMember, _teamsAsMember));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_teamsAsLeader),
      const DeepCollectionEquality().hash(_teamsAsMember));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamChartPerformanceModelImplCopyWith<_$TeamChartPerformanceModelImpl>
      get copyWith => __$$TeamChartPerformanceModelImplCopyWithImpl<
          _$TeamChartPerformanceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamChartPerformanceModelImplToJson(
      this,
    );
  }
}

abstract class _TeamChartPerformanceModel implements TeamChartPerformanceModel {
  factory _TeamChartPerformanceModel(
          {@JsonKey(name: "teamNumberAsLead")
          required final List<ChartObjectModel> teamsAsLeader,
          @JsonKey(name: "teamNumberAsMember")
          required final List<ChartObjectModel> teamsAsMember}) =
      _$TeamChartPerformanceModelImpl;

  factory _TeamChartPerformanceModel.fromJson(Map<String, dynamic> json) =
      _$TeamChartPerformanceModelImpl.fromJson;

  @override
  @JsonKey(name: "teamNumberAsLead")
  List<ChartObjectModel> get teamsAsLeader;
  @override
  @JsonKey(name: "teamNumberAsMember")
  List<ChartObjectModel> get teamsAsMember;
  @override
  @JsonKey(ignore: true)
  _$$TeamChartPerformanceModelImplCopyWith<_$TeamChartPerformanceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
