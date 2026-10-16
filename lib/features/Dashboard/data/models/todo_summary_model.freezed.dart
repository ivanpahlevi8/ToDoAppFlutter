// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToDoSummaryModel _$ToDoSummaryModelFromJson(Map<String, dynamic> json) {
  return _ToDoSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$ToDoSummaryModel {
  @JsonKey(name: "toDoNumber")
  int get toDoNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "onCreateToDoNumber")
  int get onCreateToDoNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "onProgressToDoNumber")
  int get onProgressToDoNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "onFinishedToDoNumber")
  int get onFinishedToDoNumer => throw _privateConstructorUsedError;
  @JsonKey(name: "topThreeToDo")
  List<ToDoModel> get topThreeToDo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoSummaryModelCopyWith<ToDoSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoSummaryModelCopyWith<$Res> {
  factory $ToDoSummaryModelCopyWith(
          ToDoSummaryModel value, $Res Function(ToDoSummaryModel) then) =
      _$ToDoSummaryModelCopyWithImpl<$Res, ToDoSummaryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "toDoNumber") int toDoNumber,
      @JsonKey(name: "onCreateToDoNumber") int onCreateToDoNumber,
      @JsonKey(name: "onProgressToDoNumber") int onProgressToDoNumber,
      @JsonKey(name: "onFinishedToDoNumber") int onFinishedToDoNumer,
      @JsonKey(name: "topThreeToDo") List<ToDoModel> topThreeToDo});
}

/// @nodoc
class _$ToDoSummaryModelCopyWithImpl<$Res, $Val extends ToDoSummaryModel>
    implements $ToDoSummaryModelCopyWith<$Res> {
  _$ToDoSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoNumber = null,
    Object? onCreateToDoNumber = null,
    Object? onProgressToDoNumber = null,
    Object? onFinishedToDoNumer = null,
    Object? topThreeToDo = null,
  }) {
    return _then(_value.copyWith(
      toDoNumber: null == toDoNumber
          ? _value.toDoNumber
          : toDoNumber // ignore: cast_nullable_to_non_nullable
              as int,
      onCreateToDoNumber: null == onCreateToDoNumber
          ? _value.onCreateToDoNumber
          : onCreateToDoNumber // ignore: cast_nullable_to_non_nullable
              as int,
      onProgressToDoNumber: null == onProgressToDoNumber
          ? _value.onProgressToDoNumber
          : onProgressToDoNumber // ignore: cast_nullable_to_non_nullable
              as int,
      onFinishedToDoNumer: null == onFinishedToDoNumer
          ? _value.onFinishedToDoNumer
          : onFinishedToDoNumer // ignore: cast_nullable_to_non_nullable
              as int,
      topThreeToDo: null == topThreeToDo
          ? _value.topThreeToDo
          : topThreeToDo // ignore: cast_nullable_to_non_nullable
              as List<ToDoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToDoSummaryModelImplCopyWith<$Res>
    implements $ToDoSummaryModelCopyWith<$Res> {
  factory _$$ToDoSummaryModelImplCopyWith(_$ToDoSummaryModelImpl value,
          $Res Function(_$ToDoSummaryModelImpl) then) =
      __$$ToDoSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "toDoNumber") int toDoNumber,
      @JsonKey(name: "onCreateToDoNumber") int onCreateToDoNumber,
      @JsonKey(name: "onProgressToDoNumber") int onProgressToDoNumber,
      @JsonKey(name: "onFinishedToDoNumber") int onFinishedToDoNumer,
      @JsonKey(name: "topThreeToDo") List<ToDoModel> topThreeToDo});
}

/// @nodoc
class __$$ToDoSummaryModelImplCopyWithImpl<$Res>
    extends _$ToDoSummaryModelCopyWithImpl<$Res, _$ToDoSummaryModelImpl>
    implements _$$ToDoSummaryModelImplCopyWith<$Res> {
  __$$ToDoSummaryModelImplCopyWithImpl(_$ToDoSummaryModelImpl _value,
      $Res Function(_$ToDoSummaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoNumber = null,
    Object? onCreateToDoNumber = null,
    Object? onProgressToDoNumber = null,
    Object? onFinishedToDoNumer = null,
    Object? topThreeToDo = null,
  }) {
    return _then(_$ToDoSummaryModelImpl(
      toDoNumber: null == toDoNumber
          ? _value.toDoNumber
          : toDoNumber // ignore: cast_nullable_to_non_nullable
              as int,
      onCreateToDoNumber: null == onCreateToDoNumber
          ? _value.onCreateToDoNumber
          : onCreateToDoNumber // ignore: cast_nullable_to_non_nullable
              as int,
      onProgressToDoNumber: null == onProgressToDoNumber
          ? _value.onProgressToDoNumber
          : onProgressToDoNumber // ignore: cast_nullable_to_non_nullable
              as int,
      onFinishedToDoNumer: null == onFinishedToDoNumer
          ? _value.onFinishedToDoNumer
          : onFinishedToDoNumer // ignore: cast_nullable_to_non_nullable
              as int,
      topThreeToDo: null == topThreeToDo
          ? _value._topThreeToDo
          : topThreeToDo // ignore: cast_nullable_to_non_nullable
              as List<ToDoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToDoSummaryModelImpl implements _ToDoSummaryModel {
  _$ToDoSummaryModelImpl(
      {@JsonKey(name: "toDoNumber") required this.toDoNumber,
      @JsonKey(name: "onCreateToDoNumber") required this.onCreateToDoNumber,
      @JsonKey(name: "onProgressToDoNumber") required this.onProgressToDoNumber,
      @JsonKey(name: "onFinishedToDoNumber") required this.onFinishedToDoNumer,
      @JsonKey(name: "topThreeToDo")
      required final List<ToDoModel> topThreeToDo})
      : _topThreeToDo = topThreeToDo;

  factory _$ToDoSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToDoSummaryModelImplFromJson(json);

  @override
  @JsonKey(name: "toDoNumber")
  final int toDoNumber;
  @override
  @JsonKey(name: "onCreateToDoNumber")
  final int onCreateToDoNumber;
  @override
  @JsonKey(name: "onProgressToDoNumber")
  final int onProgressToDoNumber;
  @override
  @JsonKey(name: "onFinishedToDoNumber")
  final int onFinishedToDoNumer;
  final List<ToDoModel> _topThreeToDo;
  @override
  @JsonKey(name: "topThreeToDo")
  List<ToDoModel> get topThreeToDo {
    if (_topThreeToDo is EqualUnmodifiableListView) return _topThreeToDo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topThreeToDo);
  }

  @override
  String toString() {
    return 'ToDoSummaryModel(toDoNumber: $toDoNumber, onCreateToDoNumber: $onCreateToDoNumber, onProgressToDoNumber: $onProgressToDoNumber, onFinishedToDoNumer: $onFinishedToDoNumer, topThreeToDo: $topThreeToDo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoSummaryModelImpl &&
            (identical(other.toDoNumber, toDoNumber) ||
                other.toDoNumber == toDoNumber) &&
            (identical(other.onCreateToDoNumber, onCreateToDoNumber) ||
                other.onCreateToDoNumber == onCreateToDoNumber) &&
            (identical(other.onProgressToDoNumber, onProgressToDoNumber) ||
                other.onProgressToDoNumber == onProgressToDoNumber) &&
            (identical(other.onFinishedToDoNumer, onFinishedToDoNumer) ||
                other.onFinishedToDoNumer == onFinishedToDoNumer) &&
            const DeepCollectionEquality()
                .equals(other._topThreeToDo, _topThreeToDo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      toDoNumber,
      onCreateToDoNumber,
      onProgressToDoNumber,
      onFinishedToDoNumer,
      const DeepCollectionEquality().hash(_topThreeToDo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoSummaryModelImplCopyWith<_$ToDoSummaryModelImpl> get copyWith =>
      __$$ToDoSummaryModelImplCopyWithImpl<_$ToDoSummaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToDoSummaryModelImplToJson(
      this,
    );
  }
}

abstract class _ToDoSummaryModel implements ToDoSummaryModel {
  factory _ToDoSummaryModel(
      {@JsonKey(name: "toDoNumber") required final int toDoNumber,
      @JsonKey(name: "onCreateToDoNumber")
      required final int onCreateToDoNumber,
      @JsonKey(name: "onProgressToDoNumber")
      required final int onProgressToDoNumber,
      @JsonKey(name: "onFinishedToDoNumber")
      required final int onFinishedToDoNumer,
      @JsonKey(name: "topThreeToDo")
      required final List<ToDoModel> topThreeToDo}) = _$ToDoSummaryModelImpl;

  factory _ToDoSummaryModel.fromJson(Map<String, dynamic> json) =
      _$ToDoSummaryModelImpl.fromJson;

  @override
  @JsonKey(name: "toDoNumber")
  int get toDoNumber;
  @override
  @JsonKey(name: "onCreateToDoNumber")
  int get onCreateToDoNumber;
  @override
  @JsonKey(name: "onProgressToDoNumber")
  int get onProgressToDoNumber;
  @override
  @JsonKey(name: "onFinishedToDoNumber")
  int get onFinishedToDoNumer;
  @override
  @JsonKey(name: "topThreeToDo")
  List<ToDoModel> get topThreeToDo;
  @override
  @JsonKey(ignore: true)
  _$$ToDoSummaryModelImplCopyWith<_$ToDoSummaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
