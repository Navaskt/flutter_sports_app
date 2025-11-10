// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchEntityImpl _$$MatchEntityImplFromJson(Map<String, dynamic> json) =>
    _$MatchEntityImpl(
      id: json['id'] as String,
      startTime: DateTime.parse(json['startTime'] as String),
      league: json['league'] as String,
      homeTeam: json['homeTeam'] as String,
      awayTeam: json['awayTeam'] as String,
      homeScore: (json['homeScore'] as num).toInt(),
      awayScore: (json['awayScore'] as num).toInt(),
      status: json['status'] as String,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$MatchEntityImplToJson(_$MatchEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime.toIso8601String(),
      'league': instance.league,
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
      'homeScore': instance.homeScore,
      'awayScore': instance.awayScore,
      'status': instance.status,
      'isFavorite': instance.isFavorite,
    };
