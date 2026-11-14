// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_object_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChartObjectModel _$ChartObjectModelFromJson(Map<String, dynamic> json) {
  return _ChartObjectModel.fromJson(json);
}

/// @nodoc
mixin _$ChartObjectModel {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartObjectModelCopyWith<ChartObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartObjectModelCopyWith<$Res> {
  factory $ChartObjectModelCopyWith(
          ChartObjectModel value, $Res Function(ChartObjectModel) then) =
      _$ChartObjectModelCopyWithImpl<$Res, ChartObjectModel>;
  @useResult
  $Res call({int year, int month, int count});
}

/// @nodoc
class _$ChartObjectModelCopyWithImpl<$Res, $Val extends ChartObjectModel>
    implements $ChartObjectModelCopyWith<$Res> {
  _$ChartObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartObjectModelImplCopyWith<$Res>
    implements $ChartObjectModelCopyWith<$Res> {
  factory _$$ChartObjectModelImplCopyWith(_$ChartObjectModelImpl value,
          $Res Function(_$ChartObjectModelImpl) then) =
      __$$ChartObjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int year, int month, int count});
}

/// @nodoc
class __$$ChartObjectModelImplCopyWithImpl<$Res>
    extends _$ChartObjectModelCopyWithImpl<$Res, _$ChartObjectModelImpl>
    implements _$$ChartObjectModelImplCopyWith<$Res> {
  __$$ChartObjectModelImplCopyWithImpl(_$ChartObjectModelImpl _value,
      $Res Function(_$ChartObjectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? count = null,
  }) {
    return _then(_$ChartObjectModelImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChartObjectModelImpl implements _ChartObjectModel {
  _$ChartObjectModelImpl(
      {required this.year, required this.month, required this.count});

  factory _$ChartObjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChartObjectModelImplFromJson(json);

  @override
  final int year;
  @override
  final int month;
  @override
  final int count;

  @override
  String toString() {
    return 'ChartObjectModel(year: $year, month: $month, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartObjectModelImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, year, month, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartObjectModelImplCopyWith<_$ChartObjectModelImpl> get copyWith =>
      __$$ChartObjectModelImplCopyWithImpl<_$ChartObjectModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChartObjectModelImplToJson(
      this,
    );
  }
}

abstract class _ChartObjectModel implements ChartObjectModel {
  factory _ChartObjectModel(
      {required final int year,
      required final int month,
      required final int count}) = _$ChartObjectModelImpl;

  factory _ChartObjectModel.fromJson(Map<String, dynamic> json) =
      _$ChartObjectModelImpl.fromJson;

  @override
  int get year;
  @override
  int get month;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$ChartObjectModelImplCopyWith<_$ChartObjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
