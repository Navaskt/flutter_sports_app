// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MatchEntity _$MatchEntityFromJson(Map<String, dynamic> json) {
  return _MatchEntity.fromJson(json);
}

/// @nodoc
mixin _$MatchEntity {
  String get id => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  String get league => throw _privateConstructorUsedError;
  String get homeTeam => throw _privateConstructorUsedError;
  String get awayTeam => throw _privateConstructorUsedError;
  int get homeScore => throw _privateConstructorUsedError;
  int get awayScore => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // scheduled, live, finished
  bool get isFavorite => throw _privateConstructorUsedError;

  /// Serializes this MatchEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchEntityCopyWith<MatchEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchEntityCopyWith<$Res> {
  factory $MatchEntityCopyWith(
    MatchEntity value,
    $Res Function(MatchEntity) then,
  ) = _$MatchEntityCopyWithImpl<$Res, MatchEntity>;
  @useResult
  $Res call({
    String id,
    DateTime startTime,
    String league,
    String homeTeam,
    String awayTeam,
    int homeScore,
    int awayScore,
    String status,
    bool isFavorite,
  });
}

/// @nodoc
class _$MatchEntityCopyWithImpl<$Res, $Val extends MatchEntity>
    implements $MatchEntityCopyWith<$Res> {
  _$MatchEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? league = null,
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? homeScore = null,
    Object? awayScore = null,
    Object? status = null,
    Object? isFavorite = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            startTime: null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            league: null == league
                ? _value.league
                : league // ignore: cast_nullable_to_non_nullable
                      as String,
            homeTeam: null == homeTeam
                ? _value.homeTeam
                : homeTeam // ignore: cast_nullable_to_non_nullable
                      as String,
            awayTeam: null == awayTeam
                ? _value.awayTeam
                : awayTeam // ignore: cast_nullable_to_non_nullable
                      as String,
            homeScore: null == homeScore
                ? _value.homeScore
                : homeScore // ignore: cast_nullable_to_non_nullable
                      as int,
            awayScore: null == awayScore
                ? _value.awayScore
                : awayScore // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            isFavorite: null == isFavorite
                ? _value.isFavorite
                : isFavorite // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MatchEntityImplCopyWith<$Res>
    implements $MatchEntityCopyWith<$Res> {
  factory _$$MatchEntityImplCopyWith(
    _$MatchEntityImpl value,
    $Res Function(_$MatchEntityImpl) then,
  ) = __$$MatchEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    DateTime startTime,
    String league,
    String homeTeam,
    String awayTeam,
    int homeScore,
    int awayScore,
    String status,
    bool isFavorite,
  });
}

/// @nodoc
class __$$MatchEntityImplCopyWithImpl<$Res>
    extends _$MatchEntityCopyWithImpl<$Res, _$MatchEntityImpl>
    implements _$$MatchEntityImplCopyWith<$Res> {
  __$$MatchEntityImplCopyWithImpl(
    _$MatchEntityImpl _value,
    $Res Function(_$MatchEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? league = null,
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? homeScore = null,
    Object? awayScore = null,
    Object? status = null,
    Object? isFavorite = null,
  }) {
    return _then(
      _$MatchEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        startTime: null == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        league: null == league
            ? _value.league
            : league // ignore: cast_nullable_to_non_nullable
                  as String,
        homeTeam: null == homeTeam
            ? _value.homeTeam
            : homeTeam // ignore: cast_nullable_to_non_nullable
                  as String,
        awayTeam: null == awayTeam
            ? _value.awayTeam
            : awayTeam // ignore: cast_nullable_to_non_nullable
                  as String,
        homeScore: null == homeScore
            ? _value.homeScore
            : homeScore // ignore: cast_nullable_to_non_nullable
                  as int,
        awayScore: null == awayScore
            ? _value.awayScore
            : awayScore // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        isFavorite: null == isFavorite
            ? _value.isFavorite
            : isFavorite // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchEntityImpl implements _MatchEntity {
  const _$MatchEntityImpl({
    required this.id,
    required this.startTime,
    required this.league,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeScore,
    required this.awayScore,
    required this.status,
    this.isFavorite = false,
  });

  factory _$MatchEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchEntityImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime startTime;
  @override
  final String league;
  @override
  final String homeTeam;
  @override
  final String awayTeam;
  @override
  final int homeScore;
  @override
  final int awayScore;
  @override
  final String status;
  // scheduled, live, finished
  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'MatchEntity(id: $id, startTime: $startTime, league: $league, homeTeam: $homeTeam, awayTeam: $awayTeam, homeScore: $homeScore, awayScore: $awayScore, status: $status, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.league, league) || other.league == league) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.awayTeam, awayTeam) ||
                other.awayTeam == awayTeam) &&
            (identical(other.homeScore, homeScore) ||
                other.homeScore == homeScore) &&
            (identical(other.awayScore, awayScore) ||
                other.awayScore == awayScore) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    startTime,
    league,
    homeTeam,
    awayTeam,
    homeScore,
    awayScore,
    status,
    isFavorite,
  );

  /// Create a copy of MatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchEntityImplCopyWith<_$MatchEntityImpl> get copyWith =>
      __$$MatchEntityImplCopyWithImpl<_$MatchEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchEntityImplToJson(this);
  }
}

abstract class _MatchEntity implements MatchEntity {
  const factory _MatchEntity({
    required final String id,
    required final DateTime startTime,
    required final String league,
    required final String homeTeam,
    required final String awayTeam,
    required final int homeScore,
    required final int awayScore,
    required final String status,
    final bool isFavorite,
  }) = _$MatchEntityImpl;

  factory _MatchEntity.fromJson(Map<String, dynamic> json) =
      _$MatchEntityImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get startTime;
  @override
  String get league;
  @override
  String get homeTeam;
  @override
  String get awayTeam;
  @override
  int get homeScore;
  @override
  int get awayScore;
  @override
  String get status; // scheduled, live, finished
  @override
  bool get isFavorite;

  /// Create a copy of MatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchEntityImplCopyWith<_$MatchEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
