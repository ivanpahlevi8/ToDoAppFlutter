// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_chart_performance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToDoChartPerformanceModel _$ToDoChartPerformanceModelFromJson(
    Map<String, dynamic> json) {
  return _ToDoChartPerformanceModel.fromJson(json);
}

/// @nodoc
mixin _$ToDoChartPerformanceModel {
  @JsonKey(name: "toDoOnCreatedYear")
  List<ChartObjectModel> get toDoOnCreated =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "toDoOnProgressedYear")
  List<ChartObjectModel> get toDoOnProgressed =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "toDoOnFinishedYear")
  List<ChartObjectModel> get toDoOnFinished =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoChartPerformanceModelCopyWith<ToDoChartPerformanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoChartPerformanceModelCopyWith<$Res> {
  factory $ToDoChartPerformanceModelCopyWith(ToDoChartPerformanceModel value,
          $Res Function(ToDoChartPerformanceModel) then) =
      _$ToDoChartPerformanceModelCopyWithImpl<$Res, ToDoChartPerformanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "toDoOnCreatedYear") List<ChartObjectModel> toDoOnCreated,
      @JsonKey(name: "toDoOnProgressedYear")
      List<ChartObjectModel> toDoOnProgressed,
      @JsonKey(name: "toDoOnFinishedYear")
      List<ChartObjectModel> toDoOnFinished});
}

/// @nodoc
class _$ToDoChartPerformanceModelCopyWithImpl<$Res,
        $Val extends ToDoChartPerformanceModel>
    implements $ToDoChartPerformanceModelCopyWith<$Res> {
  _$ToDoChartPerformanceModelCopyWithImpl(this._value, this._then);

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
              as List<ChartObjectModel>,
      toDoOnProgressed: null == toDoOnProgressed
          ? _value.toDoOnProgressed
          : toDoOnProgressed // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
      toDoOnFinished: null == toDoOnFinished
          ? _value.toDoOnFinished
          : toDoOnFinished // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToDoChartPerformanceModelImplCopyWith<$Res>
    implements $ToDoChartPerformanceModelCopyWith<$Res> {
  factory _$$ToDoChartPerformanceModelImplCopyWith(
          _$ToDoChartPerformanceModelImpl value,
          $Res Function(_$ToDoChartPerformanceModelImpl) then) =
      __$$ToDoChartPerformanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "toDoOnCreatedYear") List<ChartObjectModel> toDoOnCreated,
      @JsonKey(name: "toDoOnProgressedYear")
      List<ChartObjectModel> toDoOnProgressed,
      @JsonKey(name: "toDoOnFinishedYear")
      List<ChartObjectModel> toDoOnFinished});
}

/// @nodoc
class __$$ToDoChartPerformanceModelImplCopyWithImpl<$Res>
    extends _$ToDoChartPerformanceModelCopyWithImpl<$Res,
        _$ToDoChartPerformanceModelImpl>
    implements _$$ToDoChartPerformanceModelImplCopyWith<$Res> {
  __$$ToDoChartPerformanceModelImplCopyWithImpl(
      _$ToDoChartPerformanceModelImpl _value,
      $Res Function(_$ToDoChartPerformanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoOnCreated = null,
    Object? toDoOnProgressed = null,
    Object? toDoOnFinished = null,
  }) {
    return _then(_$ToDoChartPerformanceModelImpl(
      toDoOnCreated: null == toDoOnCreated
          ? _value._toDoOnCreated
          : toDoOnCreated // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
      toDoOnProgressed: null == toDoOnProgressed
          ? _value._toDoOnProgressed
          : toDoOnProgressed // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
      toDoOnFinished: null == toDoOnFinished
          ? _value._toDoOnFinished
          : toDoOnFinished // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToDoChartPerformanceModelImpl implements _ToDoChartPerformanceModel {
  _$ToDoChartPerformanceModelImpl(
      {@JsonKey(name: "toDoOnCreatedYear")
      required final List<ChartObjectModel> toDoOnCreated,
      @JsonKey(name: "toDoOnProgressedYear")
      required final List<ChartObjectModel> toDoOnProgressed,
      @JsonKey(name: "toDoOnFinishedYear")
      required final List<ChartObjectModel> toDoOnFinished})
      : _toDoOnCreated = toDoOnCreated,
        _toDoOnProgressed = toDoOnProgressed,
        _toDoOnFinished = toDoOnFinished;

  factory _$ToDoChartPerformanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToDoChartPerformanceModelImplFromJson(json);

  final List<ChartObjectModel> _toDoOnCreated;
  @override
  @JsonKey(name: "toDoOnCreatedYear")
  List<ChartObjectModel> get toDoOnCreated {
    if (_toDoOnCreated is EqualUnmodifiableListView) return _toDoOnCreated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toDoOnCreated);
  }

  final List<ChartObjectModel> _toDoOnProgressed;
  @override
  @JsonKey(name: "toDoOnProgressedYear")
  List<ChartObjectModel> get toDoOnProgressed {
    if (_toDoOnProgressed is EqualUnmodifiableListView)
      return _toDoOnProgressed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toDoOnProgressed);
  }

  final List<ChartObjectModel> _toDoOnFinished;
  @override
  @JsonKey(name: "toDoOnFinishedYear")
  List<ChartObjectModel> get toDoOnFinished {
    if (_toDoOnFinished is EqualUnmodifiableListView) return _toDoOnFinished;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toDoOnFinished);
  }

  @override
  String toString() {
    return 'ToDoChartPerformanceModel(toDoOnCreated: $toDoOnCreated, toDoOnProgressed: $toDoOnProgressed, toDoOnFinished: $toDoOnFinished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoChartPerformanceModelImpl &&
            const DeepCollectionEquality()
                .equals(other._toDoOnCreated, _toDoOnCreated) &&
            const DeepCollectionEquality()
                .equals(other._toDoOnProgressed, _toDoOnProgressed) &&
            const DeepCollectionEquality()
                .equals(other._toDoOnFinished, _toDoOnFinished));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_toDoOnCreated),
      const DeepCollectionEquality().hash(_toDoOnProgressed),
      const DeepCollectionEquality().hash(_toDoOnFinished));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoChartPerformanceModelImplCopyWith<_$ToDoChartPerformanceModelImpl>
      get copyWith => __$$ToDoChartPerformanceModelImplCopyWithImpl<
          _$ToDoChartPerformanceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToDoChartPerformanceModelImplToJson(
      this,
    );
  }
}

abstract class _ToDoChartPerformanceModel implements ToDoChartPerformanceModel {
  factory _ToDoChartPerformanceModel(
          {@JsonKey(name: "toDoOnCreatedYear")
          required final List<ChartObjectModel> toDoOnCreated,
          @JsonKey(name: "toDoOnProgressedYear")
          required final List<ChartObjectModel> toDoOnProgressed,
          @JsonKey(name: "toDoOnFinishedYear")
          required final List<ChartObjectModel> toDoOnFinished}) =
      _$ToDoChartPerformanceModelImpl;

  factory _ToDoChartPerformanceModel.fromJson(Map<String, dynamic> json) =
      _$ToDoChartPerformanceModelImpl.fromJson;

  @override
  @JsonKey(name: "toDoOnCreatedYear")
  List<ChartObjectModel> get toDoOnCreated;
  @override
  @JsonKey(name: "toDoOnProgressedYear")
  List<ChartObjectModel> get toDoOnProgressed;
  @override
  @JsonKey(name: "toDoOnFinishedYear")
  List<ChartObjectModel> get toDoOnFinished;
  @override
  @JsonKey(ignore: true)
  _$$ToDoChartPerformanceModelImplCopyWith<_$ToDoChartPerformanceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
