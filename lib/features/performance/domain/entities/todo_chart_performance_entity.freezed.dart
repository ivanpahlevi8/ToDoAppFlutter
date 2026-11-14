// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_chart_performance_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToDoChartPerformanceEntity {
  List<ChartObjectEntity> get toDoOnCreated =>
      throw _privateConstructorUsedError;
  List<ChartObjectEntity> get toDoOnProgressed =>
      throw _privateConstructorUsedError;
  List<ChartObjectEntity> get toDoOnFinished =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToDoChartPerformanceEntityCopyWith<ToDoChartPerformanceEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoChartPerformanceEntityCopyWith<$Res> {
  factory $ToDoChartPerformanceEntityCopyWith(ToDoChartPerformanceEntity value,
          $Res Function(ToDoChartPerformanceEntity) then) =
      _$ToDoChartPerformanceEntityCopyWithImpl<$Res,
          ToDoChartPerformanceEntity>;
  @useResult
  $Res call(
      {List<ChartObjectEntity> toDoOnCreated,
      List<ChartObjectEntity> toDoOnProgressed,
      List<ChartObjectEntity> toDoOnFinished});
}

/// @nodoc
class _$ToDoChartPerformanceEntityCopyWithImpl<$Res,
        $Val extends ToDoChartPerformanceEntity>
    implements $ToDoChartPerformanceEntityCopyWith<$Res> {
  _$ToDoChartPerformanceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoOnCreated = null,
    Object? toDoOnProgressed = null,
    Object? toDoOnFinished = null,
  }) {
    return _then(_value.copyWith(
      toDoOnCreated: null == toDoOnCreated
          ? _value.toDoOnCreated
          : toDoOnCreated // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
      toDoOnProgressed: null == toDoOnProgressed
          ? _value.toDoOnProgressed
          : toDoOnProgressed // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
      toDoOnFinished: null == toDoOnFinished
          ? _value.toDoOnFinished
          : toDoOnFinished // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToDoChartPerformanceEntityImplCopyWith<$Res>
    implements $ToDoChartPerformanceEntityCopyWith<$Res> {
  factory _$$ToDoChartPerformanceEntityImplCopyWith(
          _$ToDoChartPerformanceEntityImpl value,
          $Res Function(_$ToDoChartPerformanceEntityImpl) then) =
      __$$ToDoChartPerformanceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChartObjectEntity> toDoOnCreated,
      List<ChartObjectEntity> toDoOnProgressed,
      List<ChartObjectEntity> toDoOnFinished});
}

/// @nodoc
class __$$ToDoChartPerformanceEntityImplCopyWithImpl<$Res>
    extends _$ToDoChartPerformanceEntityCopyWithImpl<$Res,
        _$ToDoChartPerformanceEntityImpl>
    implements _$$ToDoChartPerformanceEntityImplCopyWith<$Res> {
  __$$ToDoChartPerformanceEntityImplCopyWithImpl(
      _$ToDoChartPerformanceEntityImpl _value,
      $Res Function(_$ToDoChartPerformanceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoOnCreated = null,
    Object? toDoOnProgressed = null,
    Object? toDoOnFinished = null,
  }) {
    return _then(_$ToDoChartPerformanceEntityImpl(
      toDoOnCreated: null == toDoOnCreated
          ? _value._toDoOnCreated
          : toDoOnCreated // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
      toDoOnProgressed: null == toDoOnProgressed
          ? _value._toDoOnProgressed
          : toDoOnProgressed // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
      toDoOnFinished: null == toDoOnFinished
          ? _value._toDoOnFinished
          : toDoOnFinished // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
    ));
  }
}

/// @nodoc

class _$ToDoChartPerformanceEntityImpl implements _ToDoChartPerformanceEntity {
  _$ToDoChartPerformanceEntityImpl(
      {required final List<ChartObjectEntity> toDoOnCreated,
      required final List<ChartObjectEntity> toDoOnProgressed,
      required final List<ChartObjectEntity> toDoOnFinished})
      : _toDoOnCreated = toDoOnCreated,
        _toDoOnProgressed = toDoOnProgressed,
        _toDoOnFinished = toDoOnFinished;

  final List<ChartObjectEntity> _toDoOnCreated;
  @override
  List<ChartObjectEntity> get toDoOnCreated {
    if (_toDoOnCreated is EqualUnmodifiableListView) return _toDoOnCreated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toDoOnCreated);
  }

  final List<ChartObjectEntity> _toDoOnProgressed;
  @override
  List<ChartObjectEntity> get toDoOnProgressed {
    if (_toDoOnProgressed is EqualUnmodifiableListView)
      return _toDoOnProgressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toDoOnProgressed);
  }

  final List<ChartObjectEntity> _toDoOnFinished;
  @override
  List<ChartObjectEntity> get toDoOnFinished {
    if (_toDoOnFinished is EqualUnmodifiableListView) return _toDoOnFinished;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toDoOnFinished);
  }

  @override
  String toString() {
    return 'ToDoChartPerformanceEntity(toDoOnCreated: $toDoOnCreated, toDoOnProgressed: $toDoOnProgressed, toDoOnFinished: $toDoOnFinished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoChartPerformanceEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._toDoOnCreated, _toDoOnCreated) &&
            const DeepCollectionEquality()
                .equals(other._toDoOnProgressed, _toDoOnProgressed) &&
            const DeepCollectionEquality()
                .equals(other._toDoOnFinished, _toDoOnFinished));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_toDoOnCreated),
      const DeepCollectionEquality().hash(_toDoOnProgressed),
      const DeepCollectionEquality().hash(_toDoOnFinished));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoChartPerformanceEntityImplCopyWith<_$ToDoChartPerformanceEntityImpl>
      get copyWith => __$$ToDoChartPerformanceEntityImplCopyWithImpl<
          _$ToDoChartPerformanceEntityImpl>(this, _$identity);
}

abstract class _ToDoChartPerformanceEntity
    implements ToDoChartPerformanceEntity {
  factory _ToDoChartPerformanceEntity(
          {required final List<ChartObjectEntity> toDoOnCreated,
          required final List<ChartObjectEntity> toDoOnProgressed,
          required final List<ChartObjectEntity> toDoOnFinished}) =
      _$ToDoChartPerformanceEntityImpl;

  @override
  List<ChartObjectEntity> get toDoOnCreated;
  @override
  List<ChartObjectEntity> get toDoOnProgressed;
  @override
  List<ChartObjectEntity> get toDoOnFinished;
  @override
  @JsonKey(ignore: true)
  _$$ToDoChartPerformanceEntityImplCopyWith<_$ToDoChartPerformanceEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
