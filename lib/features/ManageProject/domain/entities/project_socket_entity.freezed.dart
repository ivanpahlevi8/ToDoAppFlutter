// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_socket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectSocketEntity {
  String get toDoPointerStatus => throw _privateConstructorUsedError;
  String? get targetToDoState => throw _privateConstructorUsedError;
  ToDoEntity get toDoEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectSocketEntityCopyWith<ProjectSocketEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSocketEntityCopyWith<$Res> {
  factory $ProjectSocketEntityCopyWith(
          ProjectSocketEntity value, $Res Function(ProjectSocketEntity) then) =
      _$ProjectSocketEntityCopyWithImpl<$Res, ProjectSocketEntity>;
  @useResult
  $Res call(
      {String toDoPointerStatus,
      String? targetToDoState,
      ToDoEntity toDoEntity});

  $ToDoEntityCopyWith<$Res> get toDoEntity;
}

/// @nodoc
class _$ProjectSocketEntityCopyWithImpl<$Res, $Val extends ProjectSocketEntity>
    implements $ProjectSocketEntityCopyWith<$Res> {
  _$ProjectSocketEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoPointerStatus = null,
    Object? targetToDoState = freezed,
    Object? toDoEntity = null,
  }) {
    return _then(_value.copyWith(
      toDoPointerStatus: null == toDoPointerStatus
          ? _value.toDoPointerStatus
          : toDoPointerStatus // ignore: cast_nullable_to_non_nullable
              as String,
      targetToDoState: freezed == targetToDoState
          ? _value.targetToDoState
          : targetToDoState // ignore: cast_nullable_to_non_nullable
              as String?,
      toDoEntity: null == toDoEntity
          ? _value.toDoEntity
          : toDoEntity // ignore: cast_nullable_to_non_nullable
              as ToDoEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ToDoEntityCopyWith<$Res> get toDoEntity {
    return $ToDoEntityCopyWith<$Res>(_value.toDoEntity, (value) {
      return _then(_value.copyWith(toDoEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectSocketEntityImplCopyWith<$Res>
    implements $ProjectSocketEntityCopyWith<$Res> {
  factory _$$ProjectSocketEntityImplCopyWith(_$ProjectSocketEntityImpl value,
          $Res Function(_$ProjectSocketEntityImpl) then) =
      __$$ProjectSocketEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String toDoPointerStatus,
      String? targetToDoState,
      ToDoEntity toDoEntity});

  @override
  $ToDoEntityCopyWith<$Res> get toDoEntity;
}

/// @nodoc
class __$$ProjectSocketEntityImplCopyWithImpl<$Res>
    extends _$ProjectSocketEntityCopyWithImpl<$Res, _$ProjectSocketEntityImpl>
    implements _$$ProjectSocketEntityImplCopyWith<$Res> {
  __$$ProjectSocketEntityImplCopyWithImpl(_$ProjectSocketEntityImpl _value,
      $Res Function(_$ProjectSocketEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoPointerStatus = null,
    Object? targetToDoState = freezed,
    Object? toDoEntity = null,
  }) {
    return _then(_$ProjectSocketEntityImpl(
      toDoPointerStatus: null == toDoPointerStatus
          ? _value.toDoPointerStatus
          : toDoPointerStatus // ignore: cast_nullable_to_non_nullable
              as String,
      targetToDoState: freezed == targetToDoState
          ? _value.targetToDoState
          : targetToDoState // ignore: cast_nullable_to_non_nullable
              as String?,
      toDoEntity: null == toDoEntity
          ? _value.toDoEntity
          : toDoEntity // ignore: cast_nullable_to_non_nullable
              as ToDoEntity,
    ));
  }
}

/// @nodoc

class _$ProjectSocketEntityImpl implements _ProjectSocketEntity {
  _$ProjectSocketEntityImpl(
      {required this.toDoPointerStatus,
      required this.targetToDoState,
      required this.toDoEntity});

  @override
  final String toDoPointerStatus;
  @override
  final String? targetToDoState;
  @override
  final ToDoEntity toDoEntity;

  @override
  String toString() {
    return 'ProjectSocketEntity(toDoPointerStatus: $toDoPointerStatus, targetToDoState: $targetToDoState, toDoEntity: $toDoEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSocketEntityImpl &&
            (identical(other.toDoPointerStatus, toDoPointerStatus) ||
                other.toDoPointerStatus == toDoPointerStatus) &&
            (identical(other.targetToDoState, targetToDoState) ||
                other.targetToDoState == targetToDoState) &&
            (identical(other.toDoEntity, toDoEntity) ||
                other.toDoEntity == toDoEntity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, toDoPointerStatus, targetToDoState, toDoEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSocketEntityImplCopyWith<_$ProjectSocketEntityImpl> get copyWith =>
      __$$ProjectSocketEntityImplCopyWithImpl<_$ProjectSocketEntityImpl>(
          this, _$identity);
}

abstract class _ProjectSocketEntity implements ProjectSocketEntity {
  factory _ProjectSocketEntity(
      {required final String toDoPointerStatus,
      required final String? targetToDoState,
      required final ToDoEntity toDoEntity}) = _$ProjectSocketEntityImpl;

  @override
  String get toDoPointerStatus;
  @override
  String? get targetToDoState;
  @override
  ToDoEntity get toDoEntity;
  @override
  @JsonKey(ignore: true)
  _$$ProjectSocketEntityImplCopyWith<_$ProjectSocketEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
