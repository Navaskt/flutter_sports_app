import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

import '../../domain/entities/match_entity.dart';
import '../datasources/match_datasourc.dart';

class MatchDataSourceImpl implements MatchDataSource {
  List<MatchEntity>? _cache;
  final _controllers = <String, StreamController<MatchEntity>>{};

  @override
  Future<List<MatchEntity>> fetchLive() async {
    if (_cache != null) return _cache!;
    final raw = await rootBundle.loadString('assets/mock/live_matches.json');
    final list = (jsonDecode(raw) as List).cast<Map<String, dynamic>>();
    _cache = list.map(MatchEntity.fromJson).toList();
    return _cache!;
  }

  @override
  Stream<MatchEntity> watchMatch(String id) {
    return _controllers.putIfAbsent(id, () {
      final c = StreamController<MatchEntity>.broadcast();
      // Simulate ticking scores for the first match
      Timer.periodic(const Duration(seconds: 5), (t) {
        if (_cache == null || _cache!.isEmpty) return;
        final idx = _cache!.indexWhere((m) => m.id == id);
        if (idx == -1) return;
        final m = _cache![idx];
        if (m.status != 'live') return;
        final updated = m.copyWith(
          homeScore: m.homeScore + (idx.isEven ? 1 : 0),
          awayScore: m.awayScore + (idx.isOdd ? 1 : 0),
        );
        _cache![idx] = updated;
        c.add(updated);
      });
      return c;
    }).stream;
  }
}
