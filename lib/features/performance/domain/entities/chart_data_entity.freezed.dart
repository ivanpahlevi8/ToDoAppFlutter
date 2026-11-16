// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChartDataEntity {
  String get month => throw _privateConstructorUsedError;
  int get numData => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartDataEntityCopyWith<ChartDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartDataEntityCopyWith<$Res> {
  factory $ChartDataEntityCopyWith(
          ChartDataEntity value, $Res Function(ChartDataEntity) then) =
      _$ChartDataEntityCopyWithImpl<$Res, ChartDataEntity>;
  @useResult
  $Res call({String month, int numData, String name});
}

/// @nodoc
class _$ChartDataEntityCopyWithImpl<$Res, $Val extends ChartDataEntity>
    implements $ChartDataEntityCopyWith<$Res> {
  _$ChartDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? numData = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      numData: null == numData
          ? _value.numData
          : numData // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartDataEntityImplCopyWith<$Res>
    implements $ChartDataEntityCopyWith<$Res> {
  factory _$$ChartDataEntityImplCopyWith(_$ChartDataEntityImpl value,
          $Res Function(_$ChartDataEntityImpl) then) =
      __$$ChartDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String month, int numData, String name});
}

/// @nodoc
class __$$ChartDataEntityImplCopyWithImpl<$Res>
    extends _$ChartDataEntityCopyWithImpl<$Res, _$ChartDataEntityImpl>
    implements _$$ChartDataEntityImplCopyWith<$Res> {
  __$$ChartDataEntityImplCopyWithImpl(
      _$ChartDataEntityImpl _value, $Res Function(_$ChartDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? numData = null,
    Object? name = null,
  }) {
    return _then(_$ChartDataEntityImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      numData: null == numData
          ? _value.numData
          : numData // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChartDataEntityImpl implements _ChartDataEntity {
  _$ChartDataEntityImpl(
      {required this.month, required this.numData, required this.name});

  @override
  final String month;
  @override
  final int numData;
  @override
  final String name;

  @override
  String toString() {
    return 'ChartDataEntity(month: $month, numData: $numData, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartDataEntityImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.numData, numData) || other.numData == numData) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, month, numData, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartDataEntityImplCopyWith<_$ChartDataEntityImpl> get copyWith =>
      __$$ChartDataEntityImplCopyWithImpl<_$ChartDataEntityImpl>(
          this, _$identity);
}

abstract class _ChartDataEntity implements ChartDataEntity {
  factory _ChartDataEntity(
      {required final String month,
      required final int numData,
      required final String name}) = _$ChartDataEntityImpl;

  @override
  String get month;
  @override
  int get numData;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ChartDataEntityImplCopyWith<_$ChartDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
