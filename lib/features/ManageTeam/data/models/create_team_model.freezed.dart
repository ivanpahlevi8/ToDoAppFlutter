// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_team_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTeamModel _$CreateTeamModelFromJson(Map<String, dynamic> json) {
  return _CreateTeamModel.fromJson(json);
}

/// @nodoc
mixin _$CreateTeamModel {
  @JsonKey(name: "teamName")
  String get teamName => throw _privateConstructorUsedError;
  @JsonKey(name: "teamDescription")
  String get teamDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "teamLeader")
  String get teamLeader => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTeamModelCopyWith<CreateTeamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTeamModelCopyWith<$Res> {
  factory $CreateTeamModelCopyWith(
          CreateTeamModel value, $Res Function(CreateTeamModel) then) =
      _$CreateTeamModelCopyWithImpl<$Res, CreateTeamModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "teamName") String teamName,
      @JsonKey(name: "teamDescription") String teamDescription,
      @JsonKey(name: "teamLeader") String teamLeader});
}

/// @nodoc
class _$CreateTeamModelCopyWithImpl<$Res, $Val extends CreateTeamModel>
    implements $CreateTeamModelCopyWith<$Res> {
  _$CreateTeamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamName = null,
    Object? teamDescription = null,
    Object? teamLeader = null,
  }) {
    return _then(_value.copyWith(
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      teamDescription: null == teamDescription
          ? _value.teamDescription
          : teamDescription // ignore: cast_nullable_to_non_nullable
              as String,
      teamLeader: null == teamLeader
          ? _value.teamLeader
          : teamLeader // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTeamModelImplCopyWith<$Res>
    implements $CreateTeamModelCopyWith<$Res> {
  factory _$$CreateTeamModelImplCopyWith(_$CreateTeamModelImpl value,
          $Res Function(_$CreateTeamModelImpl) then) =
      __$$CreateTeamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "teamName") String teamName,
      @JsonKey(name: "teamDescription") String teamDescription,
      @JsonKey(name: "teamLeader") String teamLeader});
}

/// @nodoc
class __$$CreateTeamModelImplCopyWithImpl<$Res>
    extends _$CreateTeamModelCopyWithImpl<$Res, _$CreateTeamModelImpl>
    implements _$$CreateTeamModelImplCopyWith<$Res> {
  __$$CreateTeamModelImplCopyWithImpl(
      _$CreateTeamModelImpl _value, $Res Function(_$CreateTeamModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamName = null,
    Object? teamDescription = null,
    Object? teamLeader = null,
  }) {
    return _then(_$CreateTeamModelImpl(
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      teamDescription: null == teamDescription
          ? _value.teamDescription
          : teamDescription // ignore: cast_nullable_to_non_nullable
              as String,
      teamLeader: null == teamLeader
          ? _value.teamLeader
          : teamLeader // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTeamModelImpl implements _CreateTeamModel {
  _$CreateTeamModelImpl(
      {@JsonKey(name: "teamName") required this.teamName,
      @JsonKey(name: "teamDescription") required this.teamDescription,
      @JsonKey(name: "teamLeader") required this.teamLeader});

  factory _$CreateTeamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTeamModelImplFromJson(json);

  @override
  @JsonKey(name: "teamName")
  final String teamName;
  @override
  @JsonKey(name: "teamDescription")
  final String teamDescription;
  @override
  @JsonKey(name: "teamLeader")
  final String teamLeader;

  @override
  String toString() {
    return 'CreateTeamModel(teamName: $teamName, teamDescription: $teamDescription, teamLeader: $teamLeader)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTeamModelImpl &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            (identical(other.teamDescription, teamDescription) ||
                other.teamDescription == teamDescription) &&
            (identical(other.teamLeader, teamLeader) ||
                other.teamLeader == teamLeader));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, teamName, teamDescription, teamLeader);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTeamModelImplCopyWith<_$CreateTeamModelImpl> get copyWith =>
      __$$CreateTeamModelImplCopyWithImpl<_$CreateTeamModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTeamModelImplToJson(
      this,
    );
  }
}

abstract class _CreateTeamModel implements CreateTeamModel {
  factory _CreateTeamModel(
      {@JsonKey(name: "teamName") required final String teamName,
      @JsonKey(name: "teamDescription") required final String teamDescription,
      @JsonKey(name: "teamLeader")
      required final String teamLeader}) = _$CreateTeamModelImpl;

  factory _CreateTeamModel.fromJson(Map<String, dynamic> json) =
      _$CreateTeamModelImpl.fromJson;

  @override
  @JsonKey(name: "teamName")
  String get teamName;
  @override
  @JsonKey(name: "teamDescription")
  String get teamDescription;
  @override
  @JsonKey(name: "teamLeader")
  String get teamLeader;
  @override
  @JsonKey(ignore: true)
  _$$CreateTeamModelImplCopyWith<_$CreateTeamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
