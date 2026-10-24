// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConnectionSummaryModel _$ConnectionSummaryModelFromJson(
    Map<String, dynamic> json) {
  return _ConnectionSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$ConnectionSummaryModel {
  @JsonKey(name: "numberOfRequestedConnection")
  int get numberOfRequestedConnection => throw _privateConstructorUsedError;
  @JsonKey(name: "numberOfRequestConnection")
  int get numberOfRequestConnection => throw _privateConstructorUsedError;
  @JsonKey(name: "numberConnectionStatusUserFollow")
  int get numberConnectionStatusUseFollow => throw _privateConstructorUsedError;
  @JsonKey(name: "numberConnectionStatusUserFollowed")
  int get numberConnectionStatusUserFollowed =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "numberConnectionStatusConnect")
  int get numberConnectionStatusConnect => throw _privateConstructorUsedError;
  @JsonKey(name: "numberConnectionStatusUserReject")
  int get numberConnectionStatusUserReject =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "numberConnectionStatusUserRejected")
  int get numberConnectionStatusUserRejected =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "numberConnectionStatusDisconnect")
  int get numberConnectionStatusDisconnect =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "topThreeConnection")
  List<ConnectionModel> get topThreeConnection =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectionSummaryModelCopyWith<ConnectionSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionSummaryModelCopyWith<$Res> {
  factory $ConnectionSummaryModelCopyWith(ConnectionSummaryModel value,
          $Res Function(ConnectionSummaryModel) then) =
      _$ConnectionSummaryModelCopyWithImpl<$Res, ConnectionSummaryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "numberOfRequestedConnection")
      int numberOfRequestedConnection,
      @JsonKey(name: "numberOfRequestConnection") int numberOfRequestConnection,
      @JsonKey(name: "numberConnectionStatusUserFollow")
      int numberConnectionStatusUseFollow,
      @JsonKey(name: "numberConnectionStatusUserFollowed")
      int numberConnectionStatusUserFollowed,
      @JsonKey(name: "numberConnectionStatusConnect")
      int numberConnectionStatusConnect,
      @JsonKey(name: "numberConnectionStatusUserReject")
      int numberConnectionStatusUserReject,
      @JsonKey(name: "numberConnectionStatusUserRejected")
      int numberConnectionStatusUserRejected,
      @JsonKey(name: "numberConnectionStatusDisconnect")
      int numberConnectionStatusDisconnect,
      @JsonKey(name: "topThreeConnection")
      List<ConnectionModel> topThreeConnection});
}

/// @nodoc
class _$ConnectionSummaryModelCopyWithImpl<$Res,
        $Val extends ConnectionSummaryModel>
    implements $ConnectionSummaryModelCopyWith<$Res> {
  _$ConnectionSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfRequestedConnection = null,
    Object? numberOfRequestConnection = null,
    Object? numberConnectionStatusUseFollow = null,
    Object? numberConnectionStatusUserFollowed = null,
    Object? numberConnectionStatusConnect = null,
    Object? numberConnectionStatusUserReject = null,
    Object? numberConnectionStatusUserRejected = null,
    Object? numberConnectionStatusDisconnect = null,
    Object? topThreeConnection = null,
  }) {
    return _then(_value.copyWith(
      numberOfRequestedConnection: null == numberOfRequestedConnection
          ? _value.numberOfRequestedConnection
          : numberOfRequestedConnection // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfRequestConnection: null == numberOfRequestConnection
          ? _value.numberOfRequestConnection
          : numberOfRequestConnection // ignore: cast_nullable_to_non_nullable
              as int,
      numberConnectionStatusUseFollow: null == numberConnectionStatusUseFollow
          ? _value.numberConnectionStatusUseFollow
          : numberConnectionStatusUseFollow // ignore: cast_nullable_to_non_nullable
              as int,
      numberConnectionStatusUserFollowed: null ==
              numberConnectionStatusUserFollowed
          ? _value.numberConnectionStatusUserFollowed
          : numberConnectionStatusUserFollowed // ignore: cast_nullable_to_non_nullable
              as int,
      numberConnectionStatusConnect: null == numberConnectionStatusConnect
          ? _value.numberConnectionStatusConnect
          : numberConnectionStatusConnect // ignore: cast_nullable_to_non_nullable
              as int,
      numberConnectionStatusUserReject: null == numberConnectionStatusUserReject
          ? _value.numberConnectionStatusUserReject
          : numberConnectionStatusUserReject // ignore: cast_nullable_to_non_nullable
              as int,
      numberConnectionStatusUserRejected: null ==
              numberConnectionStatusUserRejected
          ? _value.numberConnectionStatusUserRejected
          : numberConnectionStatusUserRejected // ignore: cast_nullable_to_non_nullable
              as int,
      numberConnectionStatusDisconnect: null == numberConnectionStatusDisconnect
          ? _value.numberConnectionStatusDisconnect
          : numberConnectionStatusDisconnect // ignore: cast_nullable_to_non_nullable
              as int,
      topThreeConnection: null == topThreeConnection
          ? _value.topThreeConnection
          : topThreeConnection // ignore: cast_nullable_to_non_nullable
              as List<ConnectionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionSummaryModelImplCopyWith<$Res>
    implements $ConnectionSummaryModelCopyWith<$Res> {
  factory _$$ConnectionSummaryModelImplCopyWith(
          _$ConnectionSummaryModelImpl value,
          $Res Function(_$ConnectionSummaryModelImpl) then) =
      __$$ConnectionSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "numberOfRequestedConnection")
      int numberOfRequestedConnection,
      @JsonKey(name: "numberOfRequestConnection") int numberOfRequestConnection,
      @JsonKey(name: "numberConnectionStatusUserFollow")
      int numberConnectionStatusUseFollow,
      @JsonKey(name: "numberConnectionStatusUserFollowed")
      int numberConnectionStatusUserFollowed,
      @JsonKey(name: "numberConnectionStatusConnect")
      int numberConnectionStatusConnect,
      @JsonKey(name: "numberConnectionStatusUserReject")
      int numberConnectionStatusUserReject,
      @JsonKey(name: "numberConnectionStatusUserRejected")
      int numberConnectionStatusUserRejected,
      @JsonKey(name: "numberConnectionStatusDisconnect")
      int numberConnectionStatusDisconnect,
      @JsonKey(name: "topThreeConnection")
      List<ConnectionModel> topThreeConnection});
}

/// @nodoc
class __$$ConnectionSummaryModelImplCopyWithImpl<$Res>
    extends _$ConnectionSummaryModelCopyWithImpl<$Res,
        _$ConnectionSummaryModelImpl>
    implements _$$ConnectionSummaryModelImplCopyWith<$Res> {
  __$$ConnectionSummaryModelImplCopyWithImpl(
      _$ConnectionSummaryModelImpl _value,
      $Res Function(_$ConnectionSummaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfRequestedConnection = null,
    Object? numberOfRequestConnection = null,
    Object? numberConnectionStatusUseFollow = null,
    Object? numberConnectionStatusUserFollowed = null,
    Object? numberConnectionStatusConnect = null,
    Object? numberConnectionStatusUserReject = null,
    Object? numberConnectionStatusUserRejected = null,
    Object? numberConnectionStatusDisconnect = null,
    Object? topThreeConnection = null,
  }) {
    return _then(_$ConnectionSummaryModelImpl(
      numberOfRequestedConnection: null == numberOfRequestedConnection
          ? _value.numberOfRequestedConnection
          : numberOfRequestedConnection // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfRequestConnection: null == numberOfRequestConnection
          ? _value.numberOfRequestConnection
          : numberOfRequestConnection // ignore: cast_nullable_to_non_nullable
              as int,
      numberConnectionStatusUseFollow: null == numberConnectionStatusUseFollow
          ? _value.numberConnectionStatusUseFollow
          : numberConnectionStatusUseFollow // ignore: cast_nullable_to_non_nullable
              as int,
      numberConnectionStatusUserFollowed: null ==
              numberConnectionStatusUserFollowed
          ? _value.numberConnectionStatusUserFollowed
          : numberConnectionStatusUserFollowed // ignore: cast_nullable_to_non_nullable
              as int,
      numberConnectionStatusConnect: null == numberConnectionStatusConnect
          ? _value.numberConnectionStatusConnect
          : numberConnectionStatusConnect // ignore: cast_nullable_to_non_nullable
              as int,
      numberConnectionStatusUserReject: null == numberConnectionStatusUserReject
          ? _value.numberConnectionStatusUserReject
          : numberConnectionStatusUserReject // ignore: cast_nullable_to_non_nullable
              as int,
      numberConnectionStatusUserRejected: null ==
              numberConnectionStatusUserRejected
          ? _value.numberConnectionStatusUserRejected
          : numberConnectionStatusUserRejected // ignore: cast_nullable_to_non_nullable
              as int,
      numberConnectionStatusDisconnect: null == numberConnectionStatusDisconnect
          ? _value.numberConnectionStatusDisconnect
          : numberConnectionStatusDisconnect // ignore: cast_nullable_to_non_nullable
              as int,
      topThreeConnection: null == topThreeConnection
          ? _value._topThreeConnection
          : topThreeConnection // ignore: cast_nullable_to_non_nullable
              as List<ConnectionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConnectionSummaryModelImpl implements _ConnectionSummaryModel {
  _$ConnectionSummaryModelImpl(
      {@JsonKey(name: "numberOfRequestedConnection")
      required this.numberOfRequestedConnection,
      @JsonKey(name: "numberOfRequestConnection")
      required this.numberOfRequestConnection,
      @JsonKey(name: "numberConnectionStatusUserFollow")
      required this.numberConnectionStatusUseFollow,
      @JsonKey(name: "numberConnectionStatusUserFollowed")
      required this.numberConnectionStatusUserFollowed,
      @JsonKey(name: "numberConnectionStatusConnect")
      required this.numberConnectionStatusConnect,
      @JsonKey(name: "numberConnectionStatusUserReject")
      required this.numberConnectionStatusUserReject,
      @JsonKey(name: "numberConnectionStatusUserRejected")
      required this.numberConnectionStatusUserRejected,
      @JsonKey(name: "numberConnectionStatusDisconnect")
      required this.numberConnectionStatusDisconnect,
      @JsonKey(name: "topThreeConnection")
      required final List<ConnectionModel> topThreeConnection})
      : _topThreeConnection = topThreeConnection;

  factory _$ConnectionSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectionSummaryModelImplFromJson(json);

  @override
  @JsonKey(name: "numberOfRequestedConnection")
  final int numberOfRequestedConnection;
  @override
  @JsonKey(name: "numberOfRequestConnection")
  final int numberOfRequestConnection;
  @override
  @JsonKey(name: "numberConnectionStatusUserFollow")
  final int numberConnectionStatusUseFollow;
  @override
  @JsonKey(name: "numberConnectionStatusUserFollowed")
  final int numberConnectionStatusUserFollowed;
  @override
  @JsonKey(name: "numberConnectionStatusConnect")
  final int numberConnectionStatusConnect;
  @override
  @JsonKey(name: "numberConnectionStatusUserReject")
  final int numberConnectionStatusUserReject;
  @override
  @JsonKey(name: "numberConnectionStatusUserRejected")
  final int numberConnectionStatusUserRejected;
  @override
  @JsonKey(name: "numberConnectionStatusDisconnect")
  final int numberConnectionStatusDisconnect;
  final List<ConnectionModel> _topThreeConnection;
  @override
  @JsonKey(name: "topThreeConnection")
  List<ConnectionModel> get topThreeConnection {
    if (_topThreeConnection is EqualUnmodifiableListView)
      return _topThreeConnection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topThreeConnection);
  }

  @override
  String toString() {
    return 'ConnectionSummaryModel(numberOfRequestedConnection: $numberOfRequestedConnection, numberOfRequestConnection: $numberOfRequestConnection, numberConnectionStatusUseFollow: $numberConnectionStatusUseFollow, numberConnectionStatusUserFollowed: $numberConnectionStatusUserFollowed, numberConnectionStatusConnect: $numberConnectionStatusConnect, numberConnectionStatusUserReject: $numberConnectionStatusUserReject, numberConnectionStatusUserRejected: $numberConnectionStatusUserRejected, numberConnectionStatusDisconnect: $numberConnectionStatusDisconnect, topThreeConnection: $topThreeConnection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionSummaryModelImpl &&
            (identical(other.numberOfRequestedConnection, numberOfRequestedConnection) ||
                other.numberOfRequestedConnection ==
                    numberOfRequestedConnection) &&
            (identical(other.numberOfRequestConnection, numberOfRequestConnection) ||
                other.numberOfRequestConnection == numberOfRequestConnection) &&
            (identical(other.numberConnectionStatusUseFollow, numberConnectionStatusUseFollow) ||
                other.numberConnectionStatusUseFollow ==
                    numberConnectionStatusUseFollow) &&
            (identical(other.numberConnectionStatusUserFollowed,
                    numberConnectionStatusUserFollowed) ||
                other.numberConnectionStatusUserFollowed ==
                    numberConnectionStatusUserFollowed) &&
            (identical(other.numberConnectionStatusConnect, numberConnectionStatusConnect) ||
                other.numberConnectionStatusConnect ==
                    numberConnectionStatusConnect) &&
            (identical(other.numberConnectionStatusUserReject, numberConnectionStatusUserReject) ||
                other.numberConnectionStatusUserReject ==
                    numberConnectionStatusUserReject) &&
            (identical(other.numberConnectionStatusUserRejected,
                    numberConnectionStatusUserRejected) ||
                other.numberConnectionStatusUserRejected ==
                    numberConnectionStatusUserRejected) &&
            (identical(other.numberConnectionStatusDisconnect, numberConnectionStatusDisconnect) ||
                other.numberConnectionStatusDisconnect ==
                    numberConnectionStatusDisconnect) &&
            const DeepCollectionEquality()
                .equals(other._topThreeConnection, _topThreeConnection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      numberOfRequestedConnection,
      numberOfRequestConnection,
      numberConnectionStatusUseFollow,
      numberConnectionStatusUserFollowed,
      numberConnectionStatusConnect,
      numberConnectionStatusUserReject,
      numberConnectionStatusUserRejected,
      numberConnectionStatusDisconnect,
      const DeepCollectionEquality().hash(_topThreeConnection));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionSummaryModelImplCopyWith<_$ConnectionSummaryModelImpl>
      get copyWith => __$$ConnectionSummaryModelImplCopyWithImpl<
          _$ConnectionSummaryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectionSummaryModelImplToJson(
      this,
    );
  }
}

abstract class _ConnectionSummaryModel implements ConnectionSummaryModel {
  factory _ConnectionSummaryModel(
          {@JsonKey(name: "numberOfRequestedConnection")
          required final int numberOfRequestedConnection,
          @JsonKey(name: "numberOfRequestConnection")
          required final int numberOfRequestConnection,
          @JsonKey(name: "numberConnectionStatusUserFollow")
          required final int numberConnectionStatusUseFollow,
          @JsonKey(name: "numberConnectionStatusUserFollowed")
          required final int numberConnectionStatusUserFollowed,
          @JsonKey(name: "numberConnectionStatusConnect")
          required final int numberConnectionStatusConnect,
          @JsonKey(name: "numberConnectionStatusUserReject")
          required final int numberConnectionStatusUserReject,
          @JsonKey(name: "numberConnectionStatusUserRejected")
          required final int numberConnectionStatusUserRejected,
          @JsonKey(name: "numberConnectionStatusDisconnect")
          required final int numberConnectionStatusDisconnect,
          @JsonKey(name: "topThreeConnection")
          required final List<ConnectionModel> topThreeConnection}) =
      _$ConnectionSummaryModelImpl;

  factory _ConnectionSummaryModel.fromJson(Map<String, dynamic> json) =
      _$ConnectionSummaryModelImpl.fromJson;

  @override
  @JsonKey(name: "numberOfRequestedConnection")
  int get numberOfRequestedConnection;
  @override
  @JsonKey(name: "numberOfRequestConnection")
  int get numberOfRequestConnection;
  @override
  @JsonKey(name: "numberConnectionStatusUserFollow")
  int get numberConnectionStatusUseFollow;
  @override
  @JsonKey(name: "numberConnectionStatusUserFollowed")
  int get numberConnectionStatusUserFollowed;
  @override
  @JsonKey(name: "numberConnectionStatusConnect")
  int get numberConnectionStatusConnect;
  @override
  @JsonKey(name: "numberConnectionStatusUserReject")
  int get numberConnectionStatusUserReject;
  @override
  @JsonKey(name: "numberConnectionStatusUserRejected")
  int get numberConnectionStatusUserRejected;
  @override
  @JsonKey(name: "numberConnectionStatusDisconnect")
  int get numberConnectionStatusDisconnect;
  @override
  @JsonKey(name: "topThreeConnection")
  List<ConnectionModel> get topThreeConnection;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionSummaryModelImplCopyWith<_$ConnectionSummaryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
