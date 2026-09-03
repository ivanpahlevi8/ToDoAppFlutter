// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_do_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToDoModel _$ToDoModelFromJson(Map<String, dynamic> json) {
  return _ToDoModel.fromJson(json);
}

/// @nodoc
mixin _$ToDoModel {
  @JsonKey(name: "toDoId")
  int get toDoID => throw _privateConstructorUsedError;
  @JsonKey(name: "projectId")
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: "itemName")
  String get toDoName => throw _privateConstructorUsedError;
  @JsonKey(name: "itemDescription")
  String get toDoDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "itemState")
  String get toDoState => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoModelCopyWith<ToDoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoModelCopyWith<$Res> {
  factory $ToDoModelCopyWith(ToDoModel value, $Res Function(ToDoModel) then) =
      _$ToDoModelCopyWithImpl<$Res, ToDoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "toDoId") int toDoID,
      @JsonKey(name: "projectId") int projectId,
      @JsonKey(name: "itemName") String toDoName,
      @JsonKey(name: "itemDescription") String toDoDescription,
      @JsonKey(name: "itemState") String toDoState,
      @JsonKey(name: "createdAt") String createdAt});
}

/// @nodoc
class _$ToDoModelCopyWithImpl<$Res, $Val extends ToDoModel>
    implements $ToDoModelCopyWith<$Res> {
  _$ToDoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoID = null,
    Object? projectId = null,
    Object? toDoName = null,
    Object? toDoDescription = null,
    Object? toDoState = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      toDoID: null == toDoID
          ? _value.toDoID
          : toDoID // ignore: cast_nullable_to_non_nullable
              as int,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      toDoName: null == toDoName
          ? _value.toDoName
          : toDoName // ignore: cast_nullable_to_non_nullable
              as String,
      toDoDescription: null == toDoDescription
          ? _value.toDoDescription
          : toDoDescription // ignore: cast_nullable_to_non_nullable
              as String,
      toDoState: null == toDoState
          ? _value.toDoState
          : toDoState // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToDoModelImplCopyWith<$Res>
    implements $ToDoModelCopyWith<$Res> {
  factory _$$ToDoModelImplCopyWith(
          _$ToDoModelImpl value, $Res Function(_$ToDoModelImpl) then) =
      __$$ToDoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "toDoId") int toDoID,
      @JsonKey(name: "projectId") int projectId,
      @JsonKey(name: "itemName") String toDoName,
      @JsonKey(name: "itemDescription") String toDoDescription,
      @JsonKey(name: "itemState") String toDoState,
      @JsonKey(name: "createdAt") String createdAt});
}

/// @nodoc
class __$$ToDoModelImplCopyWithImpl<$Res>
    extends _$ToDoModelCopyWithImpl<$Res, _$ToDoModelImpl>
    implements _$$ToDoModelImplCopyWith<$Res> {
  __$$ToDoModelImplCopyWithImpl(
      _$ToDoModelImpl _value, $Res Function(_$ToDoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toDoID = null,
    Object? projectId = null,
    Object? toDoName = null,
    Object? toDoDescription = null,
    Object? toDoState = null,
    Object? createdAt = null,
  }) {
    return _then(_$ToDoModelImpl(
      toDoID: null == toDoID
          ? _value.toDoID
          : toDoID // ignore: cast_nullable_to_non_nullable
              as int,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      toDoName: null == toDoName
          ? _value.toDoName
          : toDoName // ignore: cast_nullable_to_non_nullable
              as String,
      toDoDescription: null == toDoDescription
          ? _value.toDoDescription
          : toDoDescription // ignore: cast_nullable_to_non_nullable
              as String,
      toDoState: null == toDoState
          ? _value.toDoState
          : toDoState // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToDoModelImpl implements _ToDoModel {
  _$ToDoModelImpl(
      {@JsonKey(name: "toDoId") required this.toDoID,
      @JsonKey(name: "projectId") required this.projectId,
      @JsonKey(name: "itemName") required this.toDoName,
      @JsonKey(name: "itemDescription") required this.toDoDescription,
      @JsonKey(name: "itemState") required this.toDoState,
      @JsonKey(name: "createdAt") required this.createdAt});

  factory _$ToDoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToDoModelImplFromJson(json);

  @override
  @JsonKey(name: "toDoId")
  final int toDoID;
  @override
  @JsonKey(name: "projectId")
  final int projectId;
  @override
  @JsonKey(name: "itemName")
  final String toDoName;
  @override
  @JsonKey(name: "itemDescription")
  final String toDoDescription;
  @override
  @JsonKey(name: "itemState")
  final String toDoState;
  @override
  @JsonKey(name: "createdAt")
  final String createdAt;

  @override
  String toString() {
    return 'ToDoModel(toDoID: $toDoID, projectId: $projectId, toDoName: $toDoName, toDoDescription: $toDoDescription, toDoState: $toDoState, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoModelImpl &&
            (identical(other.toDoID, toDoID) || other.toDoID == toDoID) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.toDoName, toDoName) ||
                other.toDoName == toDoName) &&
            (identical(other.toDoDescription, toDoDescription) ||
                other.toDoDescription == toDoDescription) &&
            (identical(other.toDoState, toDoState) ||
                other.toDoState == toDoState) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, toDoID, projectId, toDoName,
      toDoDescription, toDoState, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoModelImplCopyWith<_$ToDoModelImpl> get copyWith =>
      __$$ToDoModelImplCopyWithImpl<_$ToDoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToDoModelImplToJson(
      this,
    );
  }
}

abstract class _ToDoModel implements ToDoModel {
  factory _ToDoModel(
      {@JsonKey(name: "toDoId") required final int toDoID,
      @JsonKey(name: "projectId") required final int projectId,
      @JsonKey(name: "itemName") required final String toDoName,
      @JsonKey(name: "itemDescription") required final String toDoDescription,
      @JsonKey(name: "itemState") required final String toDoState,
      @JsonKey(name: "createdAt")
      required final String createdAt}) = _$ToDoModelImpl;

  factory _ToDoModel.fromJson(Map<String, dynamic> json) =
      _$ToDoModelImpl.fromJson;

  @override
  @JsonKey(name: "toDoId")
  int get toDoID;
  @override
  @JsonKey(name: "projectId")
  int get projectId;
  @override
  @JsonKey(name: "itemName")
  String get toDoName;
  @override
  @JsonKey(name: "itemDescription")
  String get toDoDescription;
  @override
  @JsonKey(name: "itemState")
  String get toDoState;
  @override
  @JsonKey(name: "createdAt")
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ToDoModelImplCopyWith<_$ToDoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
