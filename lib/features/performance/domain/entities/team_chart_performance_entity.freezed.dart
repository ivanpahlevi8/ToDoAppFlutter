// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_chart_performance_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeamChartPerformanceEntity {
  List<ChartObjectEntity> get teamsAsLeader =>
      throw _privateConstructorUsedError;
  List<ChartObjectEntity> get teamsAsMember =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamChartPerformanceEntityCopyWith<TeamChartPerformanceEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamChartPerformanceEntityCopyWith<$Res> {
  factory $TeamChartPerformanceEntityCopyWith(TeamChartPerformanceEntity value,
          $Res Function(TeamChartPerformanceEntity) then) =
      _$TeamChartPerformanceEntityCopyWithImpl<$Res,
          TeamChartPerformanceEntity>;
  @useResult
  $Res call(
      {List<ChartObjectEntity> teamsAsLeader,
      List<ChartObjectEntity> teamsAsMember});
}

/// @nodoc
class _$TeamChartPerformanceEntityCopyWithImpl<$Res,
        $Val extends TeamChartPerformanceEntity>
    implements $TeamChartPerformanceEntityCopyWith<$Res> {
  _$TeamChartPerformanceEntityCopyWithImpl(this._value, this._then);

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
              as List<ChartObjectEntity>,
      teamsAsMember: null == teamsAsMember
          ? _value.teamsAsMember
          : teamsAsMember // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamChartPerformanceEntityImplCopyWith<$Res>
    implements $TeamChartPerformanceEntityCopyWith<$Res> {
  factory _$$TeamChartPerformanceEntityImplCopyWith(
          _$TeamChartPerformanceEntityImpl value,
          $Res Function(_$TeamChartPerformanceEntityImpl) then) =
      __$$TeamChartPerformanceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChartObjectEntity> teamsAsLeader,
      List<ChartObjectEntity> teamsAsMember});
}

/// @nodoc
class __$$TeamChartPerformanceEntityImplCopyWithImpl<$Res>
    extends _$TeamChartPerformanceEntityCopyWithImpl<$Res,
        _$TeamChartPerformanceEntityImpl>
    implements _$$TeamChartPerformanceEntityImplCopyWith<$Res> {
  __$$TeamChartPerformanceEntityImplCopyWithImpl(
      _$TeamChartPerformanceEntityImpl _value,
      $Res Function(_$TeamChartPerformanceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamsAsLeader = null,
    Object? teamsAsMember = null,
  }) {
    return _then(_$TeamChartPerformanceEntityImpl(
      teamsAsLeader: null == teamsAsLeader
          ? _value._teamsAsLeader
          : teamsAsLeader // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
      teamsAsMember: null == teamsAsMember
          ? _value._teamsAsMember
          : teamsAsMember // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
    ));
  }
}

/// @nodoc

class _$TeamChartPerformanceEntityImpl implements _TeamChartPerformanceEntity {
  _$TeamChartPerformanceEntityImpl(
      {required final List<ChartObjectEntity> teamsAsLeader,
      required final List<ChartObjectEntity> teamsAsMember})
      : _teamsAsLeader = teamsAsLeader,
        _teamsAsMember = teamsAsMember;

  final List<ChartObjectEntity> _teamsAsLeader;
  @override
  List<ChartObjectEntity> get teamsAsLeader {
    if (_teamsAsLeader is EqualUnmodifiableListView) return _teamsAsLeader;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teamsAsLeader);
  }

  final List<ChartObjectEntity> _teamsAsMember;
  @override
  List<ChartObjectEntity> get teamsAsMember {
    if (_teamsAsMember is EqualUnmodifiableListView) return _teamsAsMember;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teamsAsMember);
  }

  @override
  String toString() {
    return 'TeamChartPerformanceEntity(teamsAsLeader: $teamsAsLeader, teamsAsMember: $teamsAsMember)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamChartPerformanceEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._teamsAsLeader, _teamsAsLeader) &&
            const DeepCollectionEquality()
                .equals(other._teamsAsMember, _teamsAsMember));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_teamsAsLeader),
      const DeepCollectionEquality().hash(_teamsAsMember));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamChartPerformanceEntityImplCopyWith<_$TeamChartPerformanceEntityImpl>
      get copyWith => __$$TeamChartPerformanceEntityImplCopyWithImpl<
          _$TeamChartPerformanceEntityImpl>(this, _$identity);
}

abstract class _TeamChartPerformanceEntity
    implements TeamChartPerformanceEntity {
  factory _TeamChartPerformanceEntity(
          {required final List<ChartObjectEntity> teamsAsLeader,
          required final List<ChartObjectEntity> teamsAsMember}) =
      _$TeamChartPerformanceEntityImpl;

  @override
  List<ChartObjectEntity> get teamsAsLeader;
  @override
  List<ChartObjectEntity> get teamsAsMember;
  @override
  @JsonKey(ignore: true)
  _$$TeamChartPerformanceEntityImplCopyWith<_$TeamChartPerformanceEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
