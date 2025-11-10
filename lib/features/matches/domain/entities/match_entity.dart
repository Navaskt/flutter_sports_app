import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_entity.freezed.dart';
part 'match_entity.g.dart';

@freezed
class MatchEntity with _$MatchEntity {
  const factory MatchEntity({
    required String id,
    required DateTime startTime,
    required String league,
    required String homeTeam,
    required String awayTeam,
    required int homeScore,
    required int awayScore,
    required String status, // scheduled, live, finished
    @Default(false) bool isFavorite,
  }) = _MatchEntity;

  factory MatchEntity.fromJson(Map<String, dynamic> json) =>
      _$MatchEntityFromJson(json);
}
