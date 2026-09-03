// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_do_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToDoEntity _$ToDoEntityFromJson(Map<String, dynamic> json) {
  return _ToDoEntity.fromJson(json);
}

/// @nodoc
mixin _$ToDoEntity {
  @JsonKey(name: "toDoId")
  int get toDoId => throw _privateConstructorUsedError;
  @JsonKey(name: "projectId")
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: "itemName")
  String get todoName => throw _privateConstructorUsedError;
  @JsonKey(name: "itemDescription")
  String get toDoDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "itemState")
  String get toDoState => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get toDoCreatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoEntityCopyWith<ToDoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoEntityCopyWith<$Res> {
  factory $ToDoEntityCopyWith(
          ToDoEntity value, $Res Function(ToDoEntity) then) =
      _$ToDoEntityCopyWithImpl<$Res, ToDoEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "toDoId") int toDoId,
      @JsonKey(name: "projectId") int projectId,
      @JsonKey(name: "itemName") String todoName,
      @JsonKey(name: "itemDescription") String toDoDescription,
      @JsonKey(name: "itemState") String toDoState,
      @JsonKey(name: "createdAt") String toDoCreatedAt});
}

/// @nodoc
class _$ToDoEntityCopyWithImpl<$Res, $Val extends ToDoEntity>
    implements $ToDoEntityCopyWith<$Res> {
  _$ToDoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoId = null,
    Object? projectId = null,
    Object? todoName = null,
    Object? toDoDescription = null,
    Object? toDoState = null,
    Object? toDoCreatedAt = null,
  }) {
    return _then(_value.copyWith(
      toDoId: null == toDoId
          ? _value.toDoId
          : toDoId // ignore: cast_nullable_to_non_nullable
              as int,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      todoName: null == todoName
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as String,
      toDoDescription: null == toDoDescription
          ? _value.toDoDescription
          : toDoDescription // ignore: cast_nullable_to_non_nullable
              as String,
      toDoState: null == toDoState
          ? _value.toDoState
          : toDoState // ignore: cast_nullable_to_non_nullable
              as String,
      toDoCreatedAt: null == toDoCreatedAt
          ? _value.toDoCreatedAt
          : toDoCreatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToDoEntityImplCopyWith<$Res>
    implements $ToDoEntityCopyWith<$Res> {
  factory _$$ToDoEntityImplCopyWith(
          _$ToDoEntityImpl value, $Res Function(_$ToDoEntityImpl) then) =
      __$$ToDoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "toDoId") int toDoId,
      @JsonKey(name: "projectId") int projectId,
      @JsonKey(name: "itemName") String todoName,
      @JsonKey(name: "itemDescription") String toDoDescription,
      @JsonKey(name: "itemState") String toDoState,
      @JsonKey(name: "createdAt") String toDoCreatedAt});
}

/// @nodoc
class __$$ToDoEntityImplCopyWithImpl<$Res>
    extends _$ToDoEntityCopyWithImpl<$Res, _$ToDoEntityImpl>
    implements _$$ToDoEntityImplCopyWith<$Res> {
  __$$ToDoEntityImplCopyWithImpl(
      _$ToDoEntityImpl _value, $Res Function(_$ToDoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoId = null,
    Object? projectId = null,
    Object? todoName = null,
    Object? toDoDescription = null,
    Object? toDoState = null,
    Object? toDoCreatedAt = null,
  }) {
    return _then(_$ToDoEntityImpl(
      toDoId: null == toDoId
          ? _value.toDoId
          : toDoId // ignore: cast_nullable_to_non_nullable
              as int,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      todoName: null == todoName
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as String,
      toDoDescription: null == toDoDescription
          ? _value.toDoDescription
          : toDoDescription // ignore: cast_nullable_to_non_nullable
              as String,
      toDoState: null == toDoState
          ? _value.toDoState
          : toDoState // ignore: cast_nullable_to_non_nullable
              as String,
      toDoCreatedAt: null == toDoCreatedAt
          ? _value.toDoCreatedAt
          : toDoCreatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToDoEntityImpl implements _ToDoEntity {
  _$ToDoEntityImpl(
      {@JsonKey(name: "toDoId") required this.toDoId,
      @JsonKey(name: "projectId") required this.projectId,
      @JsonKey(name: "itemName") required this.todoName,
      @JsonKey(name: "itemDescription") required this.toDoDescription,
      @JsonKey(name: "itemState") required this.toDoState,
      @JsonKey(name: "createdAt") required this.toDoCreatedAt});

  factory _$ToDoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToDoEntityImplFromJson(json);

  @override
  @JsonKey(name: "toDoId")
  final int toDoId;
  @override
  @JsonKey(name: "projectId")
  final int projectId;
  @override
  @JsonKey(name: "itemName")
  final String todoName;
  @override
  @JsonKey(name: "itemDescription")
  final String toDoDescription;
  @override
  @JsonKey(name: "itemState")
  final String toDoState;
  @override
  @JsonKey(name: "createdAt")
  final String toDoCreatedAt;

  @override
  String toString() {
    return 'ToDoEntity(toDoId: $toDoId, projectId: $projectId, todoName: $todoName, toDoDescription: $toDoDescription, toDoState: $toDoState, toDoCreatedAt: $toDoCreatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoEntityImpl &&
            (identical(other.toDoId, toDoId) || other.toDoId == toDoId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.todoName, todoName) ||
                other.todoName == todoName) &&
            (identical(other.toDoDescription, toDoDescription) ||
                other.toDoDescription == toDoDescription) &&
            (identical(other.toDoState, toDoState) ||
                other.toDoState == toDoState) &&
            (identical(other.toDoCreatedAt, toDoCreatedAt) ||
                other.toDoCreatedAt == toDoCreatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, toDoId, projectId, todoName,
      toDoDescription, toDoState, toDoCreatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoEntityImplCopyWith<_$ToDoEntityImpl> get copyWith =>
      __$$ToDoEntityImplCopyWithImpl<_$ToDoEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToDoEntityImplToJson(
      this,
    );
  }
}

abstract class _ToDoEntity implements ToDoEntity {
  factory _ToDoEntity(
      {@JsonKey(name: "toDoId") required final int toDoId,
      @JsonKey(name: "projectId") required final int projectId,
      @JsonKey(name: "itemName") required final String todoName,
      @JsonKey(name: "itemDescription") required final String toDoDescription,
      @JsonKey(name: "itemState") required final String toDoState,
      @JsonKey(name: "createdAt")
      required final String toDoCreatedAt}) = _$ToDoEntityImpl;

  factory _ToDoEntity.fromJson(Map<String, dynamic> json) =
      _$ToDoEntityImpl.fromJson;

  @override
  @JsonKey(name: "toDoId")
  int get toDoId;
  @override
  @JsonKey(name: "projectId")
  int get projectId;
  @override
  @JsonKey(name: "itemName")
  String get todoName;
  @override
  @JsonKey(name: "itemDescription")
  String get toDoDescription;
  @override
  @JsonKey(name: "itemState")
  String get toDoState;
  @override
  @JsonKey(name: "createdAt")
  String get toDoCreatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ToDoEntityImplCopyWith<_$ToDoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
