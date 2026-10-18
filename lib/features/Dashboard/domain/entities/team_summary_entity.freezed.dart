// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_summary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeamSummaryEntity {
  int get numberTeamInvolved => throw _privateConstructorUsedError;
  int get numberTeamLead => throw _privateConstructorUsedError;
  List<TeamEntity> get topTeamInvolved => throw _privateConstructorUsedError;
  List<TeamEntity> get topTeamLead => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamSummaryEntityCopyWith<TeamSummaryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamSummaryEntityCopyWith<$Res> {
  factory $TeamSummaryEntityCopyWith(
          TeamSummaryEntity value, $Res Function(TeamSummaryEntity) then) =
      _$TeamSummaryEntityCopyWithImpl<$Res, TeamSummaryEntity>;
  @useResult
  $Res call(
      {int numberTeamInvolved,
      int numberTeamLead,
      List<TeamEntity> topTeamInvolved,
      List<TeamEntity> topTeamLead});
}

/// @nodoc
class _$TeamSummaryEntityCopyWithImpl<$Res, $Val extends TeamSummaryEntity>
    implements $TeamSummaryEntityCopyWith<$Res> {
  _$TeamSummaryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberTeamInvolved = null,
    Object? numberTeamLead = null,
    Object? topTeamInvolved = null,
    Object? topTeamLead = null,
  }) {
    return _then(_value.copyWith(
      numberTeamInvolved: null == numberTeamInvolved
          ? _value.numberTeamInvolved
          : numberTeamInvolved // ignore: cast_nullable_to_non_nullable
              as int,
      numberTeamLead: null == numberTeamLead
          ? _value.numberTeamLead
          : numberTeamLead // ignore: cast_nullable_to_non_nullable
              as int,
      topTeamInvolved: null == topTeamInvolved
          ? _value.topTeamInvolved
          : topTeamInvolved // ignore: cast_nullable_to_non_nullable
              as List<TeamEntity>,
      topTeamLead: null == topTeamLead
          ? _value.topTeamLead
          : topTeamLead // ignore: cast_nullable_to_non_nullable
              as List<TeamEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamSummaryEntityImplCopyWith<$Res>
    implements $TeamSummaryEntityCopyWith<$Res> {
  factory _$$TeamSummaryEntityImplCopyWith(_$TeamSummaryEntityImpl value,
          $Res Function(_$TeamSummaryEntityImpl) then) =
      __$$TeamSummaryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int numberTeamInvolved,
      int numberTeamLead,
      List<TeamEntity> topTeamInvolved,
      List<TeamEntity> topTeamLead});
}

/// @nodoc
class __$$TeamSummaryEntityImplCopyWithImpl<$Res>
    extends _$TeamSummaryEntityCopyWithImpl<$Res, _$TeamSummaryEntityImpl>
    implements _$$TeamSummaryEntityImplCopyWith<$Res> {
  __$$TeamSummaryEntityImplCopyWithImpl(_$TeamSummaryEntityImpl _value,
      $Res Function(_$TeamSummaryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberTeamInvolved = null,
    Object? numberTeamLead = null,
    Object? topTeamInvolved = null,
    Object? topTeamLead = null,
  }) {
    return _then(_$TeamSummaryEntityImpl(
      numberTeamInvolved: null == numberTeamInvolved
          ? _value.numberTeamInvolved
          : numberTeamInvolved // ignore: cast_nullable_to_non_nullable
              as int,
      numberTeamLead: null == numberTeamLead
          ? _value.numberTeamLead
          : numberTeamLead // ignore: cast_nullable_to_non_nullable
              as int,
      topTeamInvolved: null == topTeamInvolved
          ? _value._topTeamInvolved
          : topTeamInvolved // ignore: cast_nullable_to_non_nullable
              as List<TeamEntity>,
      topTeamLead: null == topTeamLead
          ? _value._topTeamLead
          : topTeamLead // ignore: cast_nullable_to_non_nullable
              as List<TeamEntity>,
    ));
  }
}

/// @nodoc

class _$TeamSummaryEntityImpl implements _TeamSummaryEntity {
  _$TeamSummaryEntityImpl(
      {required this.numberTeamInvolved,
      required this.numberTeamLead,
      required final List<TeamEntity> topTeamInvolved,
      required final List<TeamEntity> topTeamLead})
      : _topTeamInvolved = topTeamInvolved,
        _topTeamLead = topTeamLead;

  @override
  final int numberTeamInvolved;
  @override
  final int numberTeamLead;
  final List<TeamEntity> _topTeamInvolved;
  @override
  List<TeamEntity> get topTeamInvolved {
    if (_topTeamInvolved is EqualUnmodifiableListView) return _topTeamInvolved;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topTeamInvolved);
  }

  final List<TeamEntity> _topTeamLead;
  @override
  List<TeamEntity> get topTeamLead {
    if (_topTeamLead is EqualUnmodifiableListView) return _topTeamLead;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topTeamLead);
  }

  @override
  String toString() {
    return 'TeamSummaryEntity(numberTeamInvolved: $numberTeamInvolved, numberTeamLead: $numberTeamLead, topTeamInvolved: $topTeamInvolved, topTeamLead: $topTeamLead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamSummaryEntityImpl &&
            (identical(other.numberTeamInvolved, numberTeamInvolved) ||
                other.numberTeamInvolved == numberTeamInvolved) &&
            (identical(other.numberTeamLead, numberTeamLead) ||
                other.numberTeamLead == numberTeamLead) &&
            const DeepCollectionEquality()
                .equals(other._topTeamInvolved, _topTeamInvolved) &&
            const DeepCollectionEquality()
                .equals(other._topTeamLead, _topTeamLead));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      numberTeamInvolved,
      numberTeamLead,
      const DeepCollectionEquality().hash(_topTeamInvolved),
      const DeepCollectionEquality().hash(_topTeamLead));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamSummaryEntityImplCopyWith<_$TeamSummaryEntityImpl> get copyWith =>
      __$$TeamSummaryEntityImplCopyWithImpl<_$TeamSummaryEntityImpl>(
          this, _$identity);
}

abstract class _TeamSummaryEntity implements TeamSummaryEntity {
  factory _TeamSummaryEntity(
      {required final int numberTeamInvolved,
      required final int numberTeamLead,
      required final List<TeamEntity> topTeamInvolved,
      required final List<TeamEntity> topTeamLead}) = _$TeamSummaryEntityImpl;

  @override
  int get numberTeamInvolved;
  @override
  int get numberTeamLead;
  @override
  List<TeamEntity> get topTeamInvolved;
  @override
  List<TeamEntity> get topTeamLead;
  @override
  @JsonKey(ignore: true)
  _$$TeamSummaryEntityImplCopyWith<_$TeamSummaryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
