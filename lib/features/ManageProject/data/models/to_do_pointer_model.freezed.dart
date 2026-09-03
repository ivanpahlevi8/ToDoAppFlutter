// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_do_pointer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToDoPointerModel _$ToDoPointerModelFromJson(Map<String, dynamic> json) {
  return _ToDoPointerModel.fromJson(json);
}

/// @nodoc
mixin _$ToDoPointerModel {
  @JsonKey(name: "toDoPointerStatus")
  String get toDoPointerState => throw _privateConstructorUsedError;
  @JsonKey(name: "targetToDoState")
  String get targetToDoState => throw _privateConstructorUsedError;
  @JsonKey(name: "toDoItem")
  ToDoModel get toDoItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoPointerModelCopyWith<ToDoPointerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoPointerModelCopyWith<$Res> {
  factory $ToDoPointerModelCopyWith(
          ToDoPointerModel value, $Res Function(ToDoPointerModel) then) =
      _$ToDoPointerModelCopyWithImpl<$Res, ToDoPointerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "toDoPointerStatus") String toDoPointerState,
      @JsonKey(name: "targetToDoState") String targetToDoState,
      @JsonKey(name: "toDoItem") ToDoModel toDoItem});

  $ToDoModelCopyWith<$Res> get toDoItem;
}

/// @nodoc
class _$ToDoPointerModelCopyWithImpl<$Res, $Val extends ToDoPointerModel>
    implements $ToDoPointerModelCopyWith<$Res> {
  _$ToDoPointerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoPointerState = null,
    Object? targetToDoState = null,
    Object? toDoItem = null,
  }) {
    return _then(_value.copyWith(
      toDoPointerState: null == toDoPointerState
          ? _value.toDoPointerState
          : toDoPointerState // ignore: cast_nullable_to_non_nullable
              as String,
      targetToDoState: null == targetToDoState
          ? _value.targetToDoState
          : targetToDoState // ignore: cast_nullable_to_non_nullable
              as String,
      toDoItem: null == toDoItem
          ? _value.toDoItem
          : toDoItem // ignore: cast_nullable_to_non_nullable
              as ToDoModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ToDoModelCopyWith<$Res> get toDoItem {
    return $ToDoModelCopyWith<$Res>(_value.toDoItem, (value) {
      return _then(_value.copyWith(toDoItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ToDoPointerModelImplCopyWith<$Res>
    implements $ToDoPointerModelCopyWith<$Res> {
  factory _$$ToDoPointerModelImplCopyWith(_$ToDoPointerModelImpl value,
          $Res Function(_$ToDoPointerModelImpl) then) =
      __$$ToDoPointerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "toDoPointerStatus") String toDoPointerState,
      @JsonKey(name: "targetToDoState") String targetToDoState,
      @JsonKey(name: "toDoItem") ToDoModel toDoItem});

  @override
  $ToDoModelCopyWith<$Res> get toDoItem;
}

/// @nodoc
class __$$ToDoPointerModelImplCopyWithImpl<$Res>
    extends _$ToDoPointerModelCopyWithImpl<$Res, _$ToDoPointerModelImpl>
    implements _$$ToDoPointerModelImplCopyWith<$Res> {
  __$$ToDoPointerModelImplCopyWithImpl(_$ToDoPointerModelImpl _value,
      $Res Function(_$ToDoPointerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoPointerState = null,
    Object? targetToDoState = null,
    Object? toDoItem = null,
  }) {
    return _then(_$ToDoPointerModelImpl(
      toDoPointerState: null == toDoPointerState
          ? _value.toDoPointerState
          : toDoPointerState // ignore: cast_nullable_to_non_nullable
              as String,
      targetToDoState: null == targetToDoState
          ? _value.targetToDoState
          : targetToDoState // ignore: cast_nullable_to_non_nullable
              as String,
      toDoItem: null == toDoItem
          ? _value.toDoItem
          : toDoItem // ignore: cast_nullable_to_non_nullable
              as ToDoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToDoPointerModelImpl implements _ToDoPointerModel {
  _$ToDoPointerModelImpl(
      {@JsonKey(name: "toDoPointerStatus") this.toDoPointerState = '',
      @JsonKey(name: "targetToDoState") this.targetToDoState = '',
      @JsonKey(name: "toDoItem") required this.toDoItem});

  factory _$ToDoPointerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToDoPointerModelImplFromJson(json);

  @override
  @JsonKey(name: "toDoPointerStatus")
  final String toDoPointerState;
  @override
  @JsonKey(name: "targetToDoState")
  final String targetToDoState;
  @override
  @JsonKey(name: "toDoItem")
  final ToDoModel toDoItem;

  @override
  String toString() {
    return 'ToDoPointerModel(toDoPointerState: $toDoPointerState, targetToDoState: $targetToDoState, toDoItem: $toDoItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoPointerModelImpl &&
            (identical(other.toDoPointerState, toDoPointerState) ||
                other.toDoPointerState == toDoPointerState) &&
            (identical(other.targetToDoState, targetToDoState) ||
                other.targetToDoState == targetToDoState) &&
            (identical(other.toDoItem, toDoItem) ||
                other.toDoItem == toDoItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, toDoPointerState, targetToDoState, toDoItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoPointerModelImplCopyWith<_$ToDoPointerModelImpl> get copyWith =>
      __$$ToDoPointerModelImplCopyWithImpl<_$ToDoPointerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToDoPointerModelImplToJson(
      this,
    );
  }
}

abstract class _ToDoPointerModel implements ToDoPointerModel {
  factory _ToDoPointerModel(
          {@JsonKey(name: "toDoPointerStatus") final String toDoPointerState,
          @JsonKey(name: "targetToDoState") final String targetToDoState,
          @JsonKey(name: "toDoItem") required final ToDoModel toDoItem}) =
      _$ToDoPointerModelImpl;

  factory _ToDoPointerModel.fromJson(Map<String, dynamic> json) =
      _$ToDoPointerModelImpl.fromJson;

  @override
  @JsonKey(name: "toDoPointerStatus")
  String get toDoPointerState;
  @override
  @JsonKey(name: "targetToDoState")
  String get targetToDoState;
  @override
  @JsonKey(name: "toDoItem")
  ToDoModel get toDoItem;
  @override
  @JsonKey(ignore: true)
  _$$ToDoPointerModelImplCopyWith<_$ToDoPointerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
