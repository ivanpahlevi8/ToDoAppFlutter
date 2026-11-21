// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_chart_performance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConnectionChartPerformanceModel _$ConnectionChartPerformanceModelFromJson(
    Map<String, dynamic> json) {
  return _ConnectionChartPerformanceModel.fromJson(json);
}

/// @nodoc
mixin _$ConnectionChartPerformanceModel {
  @JsonKey(name: "connectionConnectedChart")
  List<ChartObjectModel> get connectionsConnected =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "connectionDisconnectedChart")
  List<ChartObjectModel> get connectionsDisconnected =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectionChartPerformanceModelCopyWith<ConnectionChartPerformanceModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionChartPerformanceModelCopyWith<$Res> {
  factory $ConnectionChartPerformanceModelCopyWith(
          ConnectionChartPerformanceModel value,
          $Res Function(ConnectionChartPerformanceModel) then) =
      _$ConnectionChartPerformanceModelCopyWithImpl<$Res,
          ConnectionChartPerformanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "connectionConnectedChart")
      List<ChartObjectModel> connectionsConnected,
      @JsonKey(name: "connectionDisconnectedChart")
      List<ChartObjectModel> connectionsDisconnected});
}

/// @nodoc
class _$ConnectionChartPerformanceModelCopyWithImpl<$Res,
        $Val extends ConnectionChartPerformanceModel>
    implements $ConnectionChartPerformanceModelCopyWith<$Res> {
  _$ConnectionChartPerformanceModelCopyWithImpl(this._value, this._then);

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
              as List<ChartObjectModel>,
      connectionsDisconnected: null == connectionsDisconnected
          ? _value.connectionsDisconnected
          : connectionsDisconnected // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionChartPerformanceModelImplCopyWith<$Res>
    implements $ConnectionChartPerformanceModelCopyWith<$Res> {
  factory _$$ConnectionChartPerformanceModelImplCopyWith(
          _$ConnectionChartPerformanceModelImpl value,
          $Res Function(_$ConnectionChartPerformanceModelImpl) then) =
      __$$ConnectionChartPerformanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "connectionConnectedChart")
      List<ChartObjectModel> connectionsConnected,
      @JsonKey(name: "connectionDisconnectedChart")
      List<ChartObjectModel> connectionsDisconnected});
}

/// @nodoc
class __$$ConnectionChartPerformanceModelImplCopyWithImpl<$Res>
    extends _$ConnectionChartPerformanceModelCopyWithImpl<$Res,
        _$ConnectionChartPerformanceModelImpl>
    implements _$$ConnectionChartPerformanceModelImplCopyWith<$Res> {
  __$$ConnectionChartPerformanceModelImplCopyWithImpl(
      _$ConnectionChartPerformanceModelImpl _value,
      $Res Function(_$ConnectionChartPerformanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionsConnected = null,
    Object? connectionsDisconnected = null,
  }) {
    return _then(_$ConnectionChartPerformanceModelImpl(
      connectionsConnected: null == connectionsConnected
          ? _value._connectionsConnected
          : connectionsConnected // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
      connectionsDisconnected: null == connectionsDisconnected
          ? _value._connectionsDisconnected
          : connectionsDisconnected // ignore: cast_nullable_to_non_nullable
              as List<ChartObjectModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConnectionChartPerformanceModelImpl
    implements _ConnectionChartPerformanceModel {
  _$ConnectionChartPerformanceModelImpl(
      {@JsonKey(name: "connectionConnectedChart")
      required final List<ChartObjectModel> connectionsConnected,
      @JsonKey(name: "connectionDisconnectedChart")
      required final List<ChartObjectModel> connectionsDisconnected})
      : _connectionsConnected = connectionsConnected,
        _connectionsDisconnected = connectionsDisconnected;

  factory _$ConnectionChartPerformanceModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConnectionChartPerformanceModelImplFromJson(json);

  final List<ChartObjectModel> _connectionsConnected;
  @override
  @JsonKey(name: "connectionConnectedChart")
  List<ChartObjectModel> get connectionsConnected {
    if (_connectionsConnected is EqualUnmodifiableListView)
      return _connectionsConnected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectionsConnected);
  }

  final List<ChartObjectModel> _connectionsDisconnected;
  @override
  @JsonKey(name: "connectionDisconnectedChart")
  List<ChartObjectModel> get connectionsDisconnected {
    if (_connectionsDisconnected is EqualUnmodifiableListView)
      return _connectionsDisconnected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectionsDisconnected);
  }

  @override
  String toString() {
    return 'ConnectionChartPerformanceModel(connectionsConnected: $connectionsConnected, connectionsDisconnected: $connectionsDisconnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionChartPerformanceModelImpl &&
            const DeepCollectionEquality()
                .equals(other._connectionsConnected, _connectionsConnected) &&
            const DeepCollectionEquality().equals(
                other._connectionsDisconnected, _connectionsDisconnected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_connectionsConnected),
      const DeepCollectionEquality().hash(_connectionsDisconnected));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionChartPerformanceModelImplCopyWith<
          _$ConnectionChartPerformanceModelImpl>
      get copyWith => __$$ConnectionChartPerformanceModelImplCopyWithImpl<
          _$ConnectionChartPerformanceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectionChartPerformanceModelImplToJson(
      this,
    );
  }
}

abstract class _ConnectionChartPerformanceModel
    implements ConnectionChartPerformanceModel {
  factory _ConnectionChartPerformanceModel(
          {@JsonKey(name: "connectionConnectedChart")
          required final List<ChartObjectModel> connectionsConnected,
          @JsonKey(name: "connectionDisconnectedChart")
          required final List<ChartObjectModel> connectionsDisconnected}) =
      _$ConnectionChartPerformanceModelImpl;

  factory _ConnectionChartPerformanceModel.fromJson(Map<String, dynamic> json) =
      _$ConnectionChartPerformanceModelImpl.fromJson;

  @override
  @JsonKey(name: "connectionConnectedChart")
  List<ChartObjectModel> get connectionsConnected;
  @override
  @JsonKey(name: "connectionDisconnectedChart")
  List<ChartObjectModel> get connectionsDisconnected;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionChartPerformanceModelImplCopyWith<
          _$ConnectionChartPerformanceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
