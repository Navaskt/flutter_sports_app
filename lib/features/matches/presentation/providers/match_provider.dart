import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sports_app/features/matches/data/datasources/match_datasourc.dart';
import '../../data/repositories/match_datasource_impl.dart';
import '../../domain/entities/match_entity.dart';

final matchRepoProvider = Provider<MatchDataSource>(
  (ref) => MatchDataSourceImpl(),
);

final liveMatchesProvider = FutureProvider<List<MatchEntity>>((ref) async {
  final repo = ref.read(matchRepoProvider);
  return repo.fetchLive();
});

class MatchStreamNotifier extends AutoDisposeAsyncNotifier<MatchEntity?> {
  @override
  Future<MatchEntity?> build() async => null;

  void start(String id) {
    final repo = ref.read(matchRepoProvider);
    final sub = repo.watchMatch(id).listen((e) => state = AsyncData(e));
    ref.onDispose(sub.cancel);
  }
}

final matchStreamProvider =
    AutoDisposeAsyncNotifierProvider<MatchStreamNotifier, MatchEntity?>(
      MatchStreamNotifier.new,
    );
