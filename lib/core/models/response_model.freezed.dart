// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseModel<T> _$ResponseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ResponseModel<T> {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool get isSuccess =>
      throw _privateConstructorUsedError; // 3. Change dynamic to T (made nullable just in case the API returns null on failure)
  @JsonKey(name: "result")
  T? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseModelCopyWith<T, ResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<T, $Res> {
  factory $ResponseModelCopyWith(
          ResponseModel<T> value, $Res Function(ResponseModel<T>) then) =
      _$ResponseModelCopyWithImpl<T, $Res, ResponseModel<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "isSuccess") bool isSuccess,
      @JsonKey(name: "result") T? result});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<T, $Res, $Val extends ResponseModel<T>>
    implements $ResponseModelCopyWith<T, $Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isSuccess = null,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseModelImplCopyWith<T, $Res>
    implements $ResponseModelCopyWith<T, $Res> {
  factory _$$ResponseModelImplCopyWith(_$ResponseModelImpl<T> value,
          $Res Function(_$ResponseModelImpl<T>) then) =
      __$$ResponseModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "isSuccess") bool isSuccess,
      @JsonKey(name: "result") T? result});
}

/// @nodoc
class __$$ResponseModelImplCopyWithImpl<T, $Res>
    extends _$ResponseModelCopyWithImpl<T, $Res, _$ResponseModelImpl<T>>
    implements _$$ResponseModelImplCopyWith<T, $Res> {
  __$$ResponseModelImplCopyWithImpl(_$ResponseModelImpl<T> _value,
      $Res Function(_$ResponseModelImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isSuccess = null,
    Object? result = freezed,
  }) {
    return _then(_$ResponseModelImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ResponseModelImpl<T> implements _ResponseModel<T> {
  _$ResponseModelImpl(
      {@JsonKey(name: "message") required this.message,
      @JsonKey(name: "isSuccess") required this.isSuccess,
      @JsonKey(name: "result") this.result});

  factory _$ResponseModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ResponseModelImplFromJson(json, fromJsonT);

  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "isSuccess")
  final bool isSuccess;
// 3. Change dynamic to T (made nullable just in case the API returns null on failure)
  @override
  @JsonKey(name: "result")
  final T? result;

  @override
  String toString() {
    return 'ResponseModel<$T>(message: $message, isSuccess: $isSuccess, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseModelImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, isSuccess,
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseModelImplCopyWith<T, _$ResponseModelImpl<T>> get copyWith =>
      __$$ResponseModelImplCopyWithImpl<T, _$ResponseModelImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ResponseModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _ResponseModel<T> implements ResponseModel<T> {
  factory _ResponseModel(
      {@JsonKey(name: "message") required final String message,
      @JsonKey(name: "isSuccess") required final bool isSuccess,
      @JsonKey(name: "result") final T? result}) = _$ResponseModelImpl<T>;

  factory _ResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ResponseModelImpl<T>.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "isSuccess")
  bool get isSuccess;
  @override // 3. Change dynamic to T (made nullable just in case the API returns null on failure)
  @JsonKey(name: "result")
  T? get result;
  @override
  @JsonKey(ignore: true)
  _$$ResponseModelImplCopyWith<T, _$ResponseModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
