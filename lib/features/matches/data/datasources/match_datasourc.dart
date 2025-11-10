import '../../domain/entities/match_entity.dart';

abstract class MatchDataSource {
  Future<List<MatchEntity>> fetchLive();
  Stream<MatchEntity> watchMatch(String id);
}
