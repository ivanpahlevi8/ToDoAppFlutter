// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_summary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToDoSummaryEntity {
  int get toDoNumber => throw _privateConstructorUsedError;
  int get onCreateToDoNumber => throw _privateConstructorUsedError;
  int get onProgressToDoNumber => throw _privateConstructorUsedError;
  int get onFinishedToDoNumber => throw _privateConstructorUsedError;
  List<ToDoEntity> get topThreeToDo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToDoSummaryEntityCopyWith<ToDoSummaryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoSummaryEntityCopyWith<$Res> {
  factory $ToDoSummaryEntityCopyWith(
          ToDoSummaryEntity value, $Res Function(ToDoSummaryEntity) then) =
      _$ToDoSummaryEntityCopyWithImpl<$Res, ToDoSummaryEntity>;
  @useResult
  $Res call(
      {int toDoNumber,
      int onCreateToDoNumber,
      int onProgressToDoNumber,
      int onFinishedToDoNumber,
      List<ToDoEntity> topThreeToDo});
}

/// @nodoc
class _$ToDoSummaryEntityCopyWithImpl<$Res, $Val extends ToDoSummaryEntity>
    implements $ToDoSummaryEntityCopyWith<$Res> {
  _$ToDoSummaryEntityCopyWithImpl(this._value, this._then);

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
    Object? onFinishedToDoNumber = null,
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
      onFinishedToDoNumber: null == onFinishedToDoNumber
          ? _value.onFinishedToDoNumber
          : onFinishedToDoNumber // ignore: cast_nullable_to_non_nullable
              as int,
      topThreeToDo: null == topThreeToDo
          ? _value.topThreeToDo
          : topThreeToDo // ignore: cast_nullable_to_non_nullable
              as List<ToDoEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToDoSummaryEntityImplCopyWith<$Res>
    implements $ToDoSummaryEntityCopyWith<$Res> {
  factory _$$ToDoSummaryEntityImplCopyWith(_$ToDoSummaryEntityImpl value,
          $Res Function(_$ToDoSummaryEntityImpl) then) =
      __$$ToDoSummaryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int toDoNumber,
      int onCreateToDoNumber,
      int onProgressToDoNumber,
      int onFinishedToDoNumber,
      List<ToDoEntity> topThreeToDo});
}

/// @nodoc
class __$$ToDoSummaryEntityImplCopyWithImpl<$Res>
    extends _$ToDoSummaryEntityCopyWithImpl<$Res, _$ToDoSummaryEntityImpl>
    implements _$$ToDoSummaryEntityImplCopyWith<$Res> {
  __$$ToDoSummaryEntityImplCopyWithImpl(_$ToDoSummaryEntityImpl _value,
      $Res Function(_$ToDoSummaryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoNumber = null,
    Object? onCreateToDoNumber = null,
    Object? onProgressToDoNumber = null,
    Object? onFinishedToDoNumber = null,
    Object? topThreeToDo = null,
  }) {
    return _then(_$ToDoSummaryEntityImpl(
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
      onFinishedToDoNumber: null == onFinishedToDoNumber
          ? _value.onFinishedToDoNumber
          : onFinishedToDoNumber // ignore: cast_nullable_to_non_nullable
              as int,
      topThreeToDo: null == topThreeToDo
          ? _value._topThreeToDo
          : topThreeToDo // ignore: cast_nullable_to_non_nullable
              as List<ToDoEntity>,
    ));
  }
}

/// @nodoc

class _$ToDoSummaryEntityImpl implements _ToDoSummaryEntity {
  _$ToDoSummaryEntityImpl(
      {required this.toDoNumber,
      required this.onCreateToDoNumber,
      required this.onProgressToDoNumber,
      required this.onFinishedToDoNumber,
      required final List<ToDoEntity> topThreeToDo})
      : _topThreeToDo = topThreeToDo;

  @override
  final int toDoNumber;
  @override
  final int onCreateToDoNumber;
  @override
  final int onProgressToDoNumber;
  @override
  final int onFinishedToDoNumber;
  final List<ToDoEntity> _topThreeToDo;
  @override
  List<ToDoEntity> get topThreeToDo {
    if (_topThreeToDo is EqualUnmodifiableListView) return _topThreeToDo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topThreeToDo);
  }

  @override
  String toString() {
    return 'ToDoSummaryEntity(toDoNumber: $toDoNumber, onCreateToDoNumber: $onCreateToDoNumber, onProgressToDoNumber: $onProgressToDoNumber, onFinishedToDoNumber: $onFinishedToDoNumber, topThreeToDo: $topThreeToDo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoSummaryEntityImpl &&
            (identical(other.toDoNumber, toDoNumber) ||
                other.toDoNumber == toDoNumber) &&
            (identical(other.onCreateToDoNumber, onCreateToDoNumber) ||
                other.onCreateToDoNumber == onCreateToDoNumber) &&
            (identical(other.onProgressToDoNumber, onProgressToDoNumber) ||
                other.onProgressToDoNumber == onProgressToDoNumber) &&
            (identical(other.onFinishedToDoNumber, onFinishedToDoNumber) ||
                other.onFinishedToDoNumber == onFinishedToDoNumber) &&
            const DeepCollectionEquality()
                .equals(other._topThreeToDo, _topThreeToDo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      toDoNumber,
      onCreateToDoNumber,
      onProgressToDoNumber,
      onFinishedToDoNumber,
      const DeepCollectionEquality().hash(_topThreeToDo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoSummaryEntityImplCopyWith<_$ToDoSummaryEntityImpl> get copyWith =>
      __$$ToDoSummaryEntityImplCopyWithImpl<_$ToDoSummaryEntityImpl>(
          this, _$identity);
}

abstract class _ToDoSummaryEntity implements ToDoSummaryEntity {
  factory _ToDoSummaryEntity(
      {required final int toDoNumber,
      required final int onCreateToDoNumber,
      required final int onProgressToDoNumber,
      required final int onFinishedToDoNumber,
      required final List<ToDoEntity> topThreeToDo}) = _$ToDoSummaryEntityImpl;

  @override
  int get toDoNumber;
  @override
  int get onCreateToDoNumber;
  @override
  int get onProgressToDoNumber;
  @override
  int get onFinishedToDoNumber;
  @override
  List<ToDoEntity> get topThreeToDo;
  @override
  @JsonKey(ignore: true)
  _$$ToDoSummaryEntityImplCopyWith<_$ToDoSummaryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
