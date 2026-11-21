// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_chart_performance_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionChartPerformanceEntity {
  List<ChartObjectEntity> get connectionsConnected =>
      throw _privateConstructorUsedError;
  List<ChartObjectEntity> get connectionsDisconnected =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionChartPerformanceEntityCopyWith<ConnectionChartPerformanceEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionChartPerformanceEntityCopyWith<$Res> {
  factory $ConnectionChartPerformanceEntityCopyWith(
          ConnectionChartPerformanceEntity value,
          $Res Function(ConnectionChartPerformanceEntity) then) =
      _$ConnectionChartPerformanceEntityCopyWithImpl<$Res,
          ConnectionChartPerformanceEntity>;
  @useResult
  $Res call(
      {List<ChartObjectEntity> connectionsConnected,
      List<ChartObjectEntity> connectionsDisconnected});
}

/// @nodoc
class _$ConnectionChartPerformanceEntityCopyWithImpl<$Res,
        $Val extends ConnectionChartPerformanceEntity>
    implements $ConnectionChartPerformanceEntityCopyWith<$Res> {
  _$ConnectionChartPerformanceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionsConnected = null,
    Object? connectionsDisconnected = null,
  }) {
    return _then(_value.copyWith(
      connectionsConnected: null == connectionsConnected
          ? _value.connectionsConnected
          : connectionsConnected // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
      connectionsDisconnected: null == connectionsDisconnected
          ? _value.connectionsDisconnected
          : connectionsDisconnected // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionChartPerformanceEntityImplCopyWith<$Res>
    implements $ConnectionChartPerformanceEntityCopyWith<$Res> {
  factory _$$ConnectionChartPerformanceEntityImplCopyWith(
          _$ConnectionChartPerformanceEntityImpl value,
          $Res Function(_$ConnectionChartPerformanceEntityImpl) then) =
      __$$ConnectionChartPerformanceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChartObjectEntity> connectionsConnected,
      List<ChartObjectEntity> connectionsDisconnected});
}

/// @nodoc
class __$$ConnectionChartPerformanceEntityImplCopyWithImpl<$Res>
    extends _$ConnectionChartPerformanceEntityCopyWithImpl<$Res,
        _$ConnectionChartPerformanceEntityImpl>
    implements _$$ConnectionChartPerformanceEntityImplCopyWith<$Res> {
  __$$ConnectionChartPerformanceEntityImplCopyWithImpl(
      _$ConnectionChartPerformanceEntityImpl _value,
      $Res Function(_$ConnectionChartPerformanceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionsConnected = null,
    Object? connectionsDisconnected = null,
  }) {
    return _then(_$ConnectionChartPerformanceEntityImpl(
      connectionsConnected: null == connectionsConnected
          ? _value._connectionsConnected
          : connectionsConnected // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
      connectionsDisconnected: null == connectionsDisconnected
          ? _value._connectionsDisconnected
          : connectionsDisconnected // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectEntity>,
    ));
  }
}

/// @nodoc

class _$ConnectionChartPerformanceEntityImpl
    implements _ConnectionChartPerformanceEntity {
  _$ConnectionChartPerformanceEntityImpl(
      {required final List<ChartObjectEntity> connectionsConnected,
      required final List<ChartObjectEntity> connectionsDisconnected})
      : _connectionsConnected = connectionsConnected,
        _connectionsDisconnected = connectionsDisconnected;

  final List<ChartObjectEntity> _connectionsConnected;
  @override
  List<ChartObjectEntity> get connectionsConnected {
    if (_connectionsConnected is EqualUnmodifiableListView)
      return _connectionsConnected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectionsConnected);
  }

  final List<ChartObjectEntity> _connectionsDisconnected;
  @override
  List<ChartObjectEntity> get connectionsDisconnected {
    if (_connectionsDisconnected is EqualUnmodifiableListView)
      return _connectionsDisconnected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectionsDisconnected);
  }

  @override
  String toString() {
    return 'ConnectionChartPerformanceEntity(connectionsConnected: $connectionsConnected, connectionsDisconnected: $connectionsDisconnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionChartPerformanceEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._connectionsConnected, _connectionsConnected) &&
            const DeepCollectionEquality().equals(
                other._connectionsDisconnected, _connectionsDisconnected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_connectionsConnected),
      const DeepCollectionEquality().hash(_connectionsDisconnected));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionChartPerformanceEntityImplCopyWith<
          _$ConnectionChartPerformanceEntityImpl>
      get copyWith => __$$ConnectionChartPerformanceEntityImplCopyWithImpl<
          _$ConnectionChartPerformanceEntityImpl>(this, _$identity);
}

abstract class _ConnectionChartPerformanceEntity
    implements ConnectionChartPerformanceEntity {
  factory _ConnectionChartPerformanceEntity(
          {required final List<ChartObjectEntity> connectionsConnected,
          required final List<ChartObjectEntity> connectionsDisconnected}) =
      _$ConnectionChartPerformanceEntityImpl;

  @override
  List<ChartObjectEntity> get connectionsConnected;
  @override
  List<ChartObjectEntity> get connectionsDisconnected;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionChartPerformanceEntityImplCopyWith<
          _$ConnectionChartPerformanceEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
