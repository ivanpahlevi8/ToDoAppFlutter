// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_object_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChartObjectEntity {
  @JsonKey(name: "year")
  int get year => throw _privateConstructorUsedError;
  @JsonKey(name: "month")
  int get month => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartObjectEntityCopyWith<ChartObjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartObjectEntityCopyWith<$Res> {
  factory $ChartObjectEntityCopyWith(
          ChartObjectEntity value, $Res Function(ChartObjectEntity) then) =
      _$ChartObjectEntityCopyWithImpl<$Res, ChartObjectEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "year") int year,
      @JsonKey(name: "month") int month,
      @JsonKey(name: "count") int count});
}

/// @nodoc
class _$ChartObjectEntityCopyWithImpl<$Res, $Val extends ChartObjectEntity>
    implements $ChartObjectEntityCopyWith<$Res> {
  _$ChartObjectEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$ChartObjectEntityImplCopyWith<$Res>
    implements $ChartObjectEntityCopyWith<$Res> {
  factory _$$ChartObjectEntityImplCopyWith(_$ChartObjectEntityImpl value,
          $Res Function(_$ChartObjectEntityImpl) then) =
      __$$ChartObjectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "year") int year,
      @JsonKey(name: "month") int month,
      @JsonKey(name: "count") int count});
}

/// @nodoc
class __$$ChartObjectEntityImplCopyWithImpl<$Res>
    extends _$ChartObjectEntityCopyWithImpl<$Res, _$ChartObjectEntityImpl>
    implements _$$ChartObjectEntityImplCopyWith<$Res> {
  __$$ChartObjectEntityImplCopyWithImpl(_$ChartObjectEntityImpl _value,
      $Res Function(_$ChartObjectEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? count = null,
  }) {
    return _then(_$ChartObjectEntityImpl(
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

class _$ChartObjectEntityImpl implements _ChartObjectEntity {
  _$ChartObjectEntityImpl(
      {@JsonKey(name: "year") required this.year,
      @JsonKey(name: "month") required this.month,
      @JsonKey(name: "count") required this.count});

  @override
  @JsonKey(name: "year")
  final int year;
  @override
  @JsonKey(name: "month")
  final int month;
  @override
  @JsonKey(name: "count")
  final int count;

  @override
  String toString() {
    return 'ChartObjectEntity(year: $year, month: $month, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartObjectEntityImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year, month, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartObjectEntityImplCopyWith<_$ChartObjectEntityImpl> get copyWith =>
      __$$ChartObjectEntityImplCopyWithImpl<_$ChartObjectEntityImpl>(
          this, _$identity);
}

abstract class _ChartObjectEntity implements ChartObjectEntity {
  factory _ChartObjectEntity(
          {@JsonKey(name: "year") required final int year,
          @JsonKey(name: "month") required final int month,
          @JsonKey(name: "count") required final int count}) =
      _$ChartObjectEntityImpl;

  @override
  @JsonKey(name: "year")
  int get year;
  @override
  @JsonKey(name: "month")
  int get month;
  @override
  @JsonKey(name: "count")
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$ChartObjectEntityImplCopyWith<_$ChartObjectEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
