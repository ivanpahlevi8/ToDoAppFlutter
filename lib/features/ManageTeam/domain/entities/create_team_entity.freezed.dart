// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_team_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTeamEntity {
  String get teamName => throw _privateConstructorUsedError;
  String get teamDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTeamEntityCopyWith<CreateTeamEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTeamEntityCopyWith<$Res> {
  factory $CreateTeamEntityCopyWith(
          CreateTeamEntity value, $Res Function(CreateTeamEntity) then) =
      _$CreateTeamEntityCopyWithImpl<$Res, CreateTeamEntity>;
  @useResult
  $Res call({String teamName, String teamDescription});
}

/// @nodoc
class _$CreateTeamEntityCopyWithImpl<$Res, $Val extends CreateTeamEntity>
    implements $CreateTeamEntityCopyWith<$Res> {
  _$CreateTeamEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamName = null,
    Object? teamDescription = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTeamEntityImplCopyWith<$Res>
    implements $CreateTeamEntityCopyWith<$Res> {
  factory _$$CreateTeamEntityImplCopyWith(_$CreateTeamEntityImpl value,
          $Res Function(_$CreateTeamEntityImpl) then) =
      __$$CreateTeamEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String teamName, String teamDescription});
}

/// @nodoc
class __$$CreateTeamEntityImplCopyWithImpl<$Res>
    extends _$CreateTeamEntityCopyWithImpl<$Res, _$CreateTeamEntityImpl>
    implements _$$CreateTeamEntityImplCopyWith<$Res> {
  __$$CreateTeamEntityImplCopyWithImpl(_$CreateTeamEntityImpl _value,
      $Res Function(_$CreateTeamEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamName = null,
    Object? teamDescription = null,
  }) {
    return _then(_$CreateTeamEntityImpl(
      teamName: null == teamName
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String,
      teamDescription: null == teamDescription
          ? _value.teamDescription
          : teamDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateTeamEntityImpl implements _CreateTeamEntity {
  _$CreateTeamEntityImpl(
      {required this.teamName, required this.teamDescription});

  @override
  final String teamName;
  @override
  final String teamDescription;

  @override
  String toString() {
    return 'CreateTeamEntity(teamName: $teamName, teamDescription: $teamDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTeamEntityImpl &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            (identical(other.teamDescription, teamDescription) ||
                other.teamDescription == teamDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teamName, teamDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTeamEntityImplCopyWith<_$CreateTeamEntityImpl> get copyWith =>
      __$$CreateTeamEntityImplCopyWithImpl<_$CreateTeamEntityImpl>(
          this, _$identity);
}

abstract class _CreateTeamEntity implements CreateTeamEntity {
  factory _CreateTeamEntity(
      {required final String teamName,
      required final String teamDescription}) = _$CreateTeamEntityImpl;

  @override
  String get teamName;
  @override
  String get teamDescription;
  @override
  @JsonKey(ignore: true)
  _$$CreateTeamEntityImplCopyWith<_$CreateTeamEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
