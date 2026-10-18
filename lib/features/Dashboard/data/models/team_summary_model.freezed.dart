// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamSummaryModel _$TeamSummaryModelFromJson(Map<String, dynamic> json) {
  return _TeamSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$TeamSummaryModel {
  @JsonKey(name: "teamNumberInvolved")
  int get numberTeamInvolved => throw _privateConstructorUsedError;
  @JsonKey(name: "teamNumberLead")
  int get teamNumberLead => throw _privateConstructorUsedError;
  @JsonKey(name: "topThreeTeamAsLeader")
  List<TeamModel> get topTeamLeader => throw _privateConstructorUsedError;
  @JsonKey(name: "topThreeTeamAsMember")
  List<TeamModel> get topTeamInvolved => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamSummaryModelCopyWith<TeamSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamSummaryModelCopyWith<$Res> {
  factory $TeamSummaryModelCopyWith(
          TeamSummaryModel value, $Res Function(TeamSummaryModel) then) =
      _$TeamSummaryModelCopyWithImpl<$Res, TeamSummaryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "teamNumberInvolved") int numberTeamInvolved,
      @JsonKey(name: "teamNumberLead") int teamNumberLead,
      @JsonKey(name: "topThreeTeamAsLeader") List<TeamModel> topTeamLeader,
      @JsonKey(name: "topThreeTeamAsMember") List<TeamModel> topTeamInvolved});
}

/// @nodoc
class _$TeamSummaryModelCopyWithImpl<$Res, $Val extends TeamSummaryModel>
    implements $TeamSummaryModelCopyWith<$Res> {
  _$TeamSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberTeamInvolved = null,
    Object? teamNumberLead = null,
    Object? topTeamLeader = null,
    Object? topTeamInvolved = null,
  }) {
    return _then(_value.copyWith(
      numberTeamInvolved: null == numberTeamInvolved
          ? _value.numberTeamInvolved
          : numberTeamInvolved // ignore: cast_nullable_to_non_nullable
              as int,
      teamNumberLead: null == teamNumberLead
          ? _value.teamNumberLead
          : teamNumberLead // ignore: cast_nullable_to_non_nullable
              as int,
      topTeamLeader: null == topTeamLeader
          ? _value.topTeamLeader
          : topTeamLeader // ignore: cast_nullable_to_non_nullable
              as List<TeamModel>,
      topTeamInvolved: null == topTeamInvolved
          ? _value.topTeamInvolved
          : topTeamInvolved // ignore: cast_nullable_to_non_nullable
              as List<TeamModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamSummaryModelImplCopyWith<$Res>
    implements $TeamSummaryModelCopyWith<$Res> {
  factory _$$TeamSummaryModelImplCopyWith(_$TeamSummaryModelImpl value,
          $Res Function(_$TeamSummaryModelImpl) then) =
      __$$TeamSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "teamNumberInvolved") int numberTeamInvolved,
      @JsonKey(name: "teamNumberLead") int teamNumberLead,
      @JsonKey(name: "topThreeTeamAsLeader") List<TeamModel> topTeamLeader,
      @JsonKey(name: "topThreeTeamAsMember") List<TeamModel> topTeamInvolved});
}

/// @nodoc
class __$$TeamSummaryModelImplCopyWithImpl<$Res>
    extends _$TeamSummaryModelCopyWithImpl<$Res, _$TeamSummaryModelImpl>
    implements _$$TeamSummaryModelImplCopyWith<$Res> {
  __$$TeamSummaryModelImplCopyWithImpl(_$TeamSummaryModelImpl _value,
      $Res Function(_$TeamSummaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberTeamInvolved = null,
    Object? teamNumberLead = null,
    Object? topTeamLeader = null,
    Object? topTeamInvolved = null,
  }) {
    return _then(_$TeamSummaryModelImpl(
      numberTeamInvolved: null == numberTeamInvolved
          ? _value.numberTeamInvolved
          : numberTeamInvolved // ignore: cast_nullable_to_non_nullable
              as int,
      teamNumberLead: null == teamNumberLead
          ? _value.teamNumberLead
          : teamNumberLead // ignore: cast_nullable_to_non_nullable
              as int,
      topTeamLeader: null == topTeamLeader
          ? _value._topTeamLeader
          : topTeamLeader // ignore: cast_nullable_to_non_nullable
              as List<TeamModel>,
      topTeamInvolved: null == topTeamInvolved
          ? _value._topTeamInvolved
          : topTeamInvolved // ignore: cast_nullable_to_non_nullable
              as List<TeamModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamSummaryModelImpl implements _TeamSummaryModel {
  _$TeamSummaryModelImpl(
      {@JsonKey(name: "teamNumberInvolved") required this.numberTeamInvolved,
      @JsonKey(name: "teamNumberLead") required this.teamNumberLead,
      @JsonKey(name: "topThreeTeamAsLeader")
      required final List<TeamModel> topTeamLeader,
      @JsonKey(name: "topThreeTeamAsMember")
      required final List<TeamModel> topTeamInvolved})
      : _topTeamLeader = topTeamLeader,
        _topTeamInvolved = topTeamInvolved;

  factory _$TeamSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamSummaryModelImplFromJson(json);

  @override
  @JsonKey(name: "teamNumberInvolved")
  final int numberTeamInvolved;
  @override
  @JsonKey(name: "teamNumberLead")
  final int teamNumberLead;
  final List<TeamModel> _topTeamLeader;
  @override
  @JsonKey(name: "topThreeTeamAsLeader")
  List<TeamModel> get topTeamLeader {
    if (_topTeamLeader is EqualUnmodifiableListView) return _topTeamLeader;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topTeamLeader);
  }

  final List<TeamModel> _topTeamInvolved;
  @override
  @JsonKey(name: "topThreeTeamAsMember")
  List<TeamModel> get topTeamInvolved {
    if (_topTeamInvolved is EqualUnmodifiableListView) return _topTeamInvolved;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topTeamInvolved);
  }

  @override
  String toString() {
    return 'TeamSummaryModel(numberTeamInvolved: $numberTeamInvolved, teamNumberLead: $teamNumberLead, topTeamLeader: $topTeamLeader, topTeamInvolved: $topTeamInvolved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamSummaryModelImpl &&
            (identical(other.numberTeamInvolved, numberTeamInvolved) ||
                other.numberTeamInvolved == numberTeamInvolved) &&
            (identical(other.teamNumberLead, teamNumberLead) ||
                other.teamNumberLead == teamNumberLead) &&
            const DeepCollectionEquality()
                .equals(other._topTeamLeader, _topTeamLeader) &&
            const DeepCollectionEquality()
                .equals(other._topTeamInvolved, _topTeamInvolved));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      numberTeamInvolved,
      teamNumberLead,
      const DeepCollectionEquality().hash(_topTeamLeader),
      const DeepCollectionEquality().hash(_topTeamInvolved));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamSummaryModelImplCopyWith<_$TeamSummaryModelImpl> get copyWith =>
      __$$TeamSummaryModelImplCopyWithImpl<_$TeamSummaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamSummaryModelImplToJson(
      this,
    );
  }
}

abstract class _TeamSummaryModel implements TeamSummaryModel {
  factory _TeamSummaryModel(
      {@JsonKey(name: "teamNumberInvolved")
      required final int numberTeamInvolved,
      @JsonKey(name: "teamNumberLead") required final int teamNumberLead,
      @JsonKey(name: "topThreeTeamAsLeader")
      required final List<TeamModel> topTeamLeader,
      @JsonKey(name: "topThreeTeamAsMember")
      required final List<TeamModel> topTeamInvolved}) = _$TeamSummaryModelImpl;

  factory _TeamSummaryModel.fromJson(Map<String, dynamic> json) =
      _$TeamSummaryModelImpl.fromJson;

  @override
  @JsonKey(name: "teamNumberInvolved")
  int get numberTeamInvolved;
  @override
  @JsonKey(name: "teamNumberLead")
  int get teamNumberLead;
  @override
  @JsonKey(name: "topThreeTeamAsLeader")
  List<TeamModel> get topTeamLeader;
  @override
  @JsonKey(name: "topThreeTeamAsMember")
  List<TeamModel> get topTeamInvolved;
  @override
  @JsonKey(ignore: true)
  _$$TeamSummaryModelImplCopyWith<_$TeamSummaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
