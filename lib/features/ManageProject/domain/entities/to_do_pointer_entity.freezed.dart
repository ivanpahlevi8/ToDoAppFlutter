// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_do_pointer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToDoPointerEntity _$ToDoPointerEntityFromJson(Map<String, dynamic> json) {
  return _ToDoPointerEntity.fromJson(json);
}

/// @nodoc
mixin _$ToDoPointerEntity {
  @JsonKey(name: "toDoPointerState")
  String get toDoPointerState => throw _privateConstructorUsedError;
  @JsonKey(name: "targetToDoState")
  String get targetToDoState => throw _privateConstructorUsedError;
  @JsonKey(name: "toDoItem")
  ToDoEntity get toDoItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoPointerEntityCopyWith<ToDoPointerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoPointerEntityCopyWith<$Res> {
  factory $ToDoPointerEntityCopyWith(
          ToDoPointerEntity value, $Res Function(ToDoPointerEntity) then) =
      _$ToDoPointerEntityCopyWithImpl<$Res, ToDoPointerEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "toDoPointerState") String toDoPointerState,
      @JsonKey(name: "targetToDoState") String targetToDoState,
      @JsonKey(name: "toDoItem") ToDoEntity toDoItem});

  $ToDoEntityCopyWith<$Res> get toDoItem;
}

/// @nodoc
class _$ToDoPointerEntityCopyWithImpl<$Res, $Val extends ToDoPointerEntity>
    implements $ToDoPointerEntityCopyWith<$Res> {
  _$ToDoPointerEntityCopyWithImpl(this._value, this._then);

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
              as ToDoEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ToDoEntityCopyWith<$Res> get toDoItem {
    return $ToDoEntityCopyWith<$Res>(_value.toDoItem, (value) {
      return _then(_value.copyWith(toDoItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ToDoPointerEntityImplCopyWith<$Res>
    implements $ToDoPointerEntityCopyWith<$Res> {
  factory _$$ToDoPointerEntityImplCopyWith(_$ToDoPointerEntityImpl value,
          $Res Function(_$ToDoPointerEntityImpl) then) =
      __$$ToDoPointerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "toDoPointerState") String toDoPointerState,
      @JsonKey(name: "targetToDoState") String targetToDoState,
      @JsonKey(name: "toDoItem") ToDoEntity toDoItem});

  @override
  $ToDoEntityCopyWith<$Res> get toDoItem;
}

/// @nodoc
class __$$ToDoPointerEntityImplCopyWithImpl<$Res>
    extends _$ToDoPointerEntityCopyWithImpl<$Res, _$ToDoPointerEntityImpl>
    implements _$$ToDoPointerEntityImplCopyWith<$Res> {
  __$$ToDoPointerEntityImplCopyWithImpl(_$ToDoPointerEntityImpl _value,
      $Res Function(_$ToDoPointerEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoPointerState = null,
    Object? targetToDoState = null,
    Object? toDoItem = null,
  }) {
    return _then(_$ToDoPointerEntityImpl(
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
              as ToDoEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToDoPointerEntityImpl implements _ToDoPointerEntity {
  _$ToDoPointerEntityImpl(
      {@JsonKey(name: "toDoPointerState") required this.toDoPointerState,
      @JsonKey(name: "targetToDoState") required this.targetToDoState,
      @JsonKey(name: "toDoItem") required this.toDoItem});

  factory _$ToDoPointerEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToDoPointerEntityImplFromJson(json);

  @override
  @JsonKey(name: "toDoPointerState")
  final String toDoPointerState;
  @override
  @JsonKey(name: "targetToDoState")
  final String targetToDoState;
  @override
  @JsonKey(name: "toDoItem")
  final ToDoEntity toDoItem;

  @override
  String toString() {
    return 'ToDoPointerEntity(toDoPointerState: $toDoPointerState, targetToDoState: $targetToDoState, toDoItem: $toDoItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoPointerEntityImpl &&
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
  _$$ToDoPointerEntityImplCopyWith<_$ToDoPointerEntityImpl> get copyWith =>
      __$$ToDoPointerEntityImplCopyWithImpl<_$ToDoPointerEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToDoPointerEntityImplToJson(
      this,
    );
  }
}

abstract class _ToDoPointerEntity implements ToDoPointerEntity {
  factory _ToDoPointerEntity(
      {@JsonKey(name: "toDoPointerState")
      required final String toDoPointerState,
      @JsonKey(name: "targetToDoState") required final String targetToDoState,
      @JsonKey(name: "toDoItem")
      required final ToDoEntity toDoItem}) = _$ToDoPointerEntityImpl;

  factory _ToDoPointerEntity.fromJson(Map<String, dynamic> json) =
      _$ToDoPointerEntityImpl.fromJson;

  @override
  @JsonKey(name: "toDoPointerState")
  String get toDoPointerState;
  @override
  @JsonKey(name: "targetToDoState")
  String get targetToDoState;
  @override
  @JsonKey(name: "toDoItem")
  ToDoEntity get toDoItem;
  @override
  @JsonKey(ignore: true)
  _$$ToDoPointerEntityImplCopyWith<_$ToDoPointerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
