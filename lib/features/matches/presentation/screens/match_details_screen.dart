import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/match_provider.dart';

class MatchDetailsScreen extends ConsumerWidget {
  const MatchDetailsScreen({super.key, required this.matchId});
  final String matchId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(matchStreamProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Match')),
      body: Center(
        child: async.when(
          loading: () => const CircularProgressIndicator(),
          error: (e, _) => Text('Error: $e'),
          data: (m) => m == null
              ? Text('Waiting for live updates for $matchId')
              : Text(
                  '${m.homeTeam} ${m.homeScore} - ${m.awayScore} ${m.awayTeam}\n${m.status}',
                ),
        ),
      ),
    );
  }
}
