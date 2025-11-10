import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/match_entity.dart';
import '../providers/match_provider.dart';

class LiveMatchesScreen extends ConsumerWidget {
  const LiveMatchesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(liveMatchesProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Live Matches')),
      body: async.when(
        loading: () => _SkeletonList(),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (items) => RefreshIndicator(
          onRefresh: () async => ref.refresh(liveMatchesProvider.future),
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: items.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, i) => _MatchTile(m: items[i]),
          ),
        ),
      ),
    );
  }
}

class _MatchTile extends ConsumerStatefulWidget {
  const _MatchTile({required this.m});
  final MatchEntity m;

  @override
  ConsumerState<_MatchTile> createState() => _MatchTileState();
}

class _MatchTileState extends ConsumerState<_MatchTile> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(matchStreamProvider.notifier).start(widget.m.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    final live = ref.watch(matchStreamProvider).value;
    final m = live?.id == widget.m.id ? live! : widget.m;

    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      tileColor: Theme.of(context).colorScheme.surface,
      onTap: () => context.push('/match/${m.id}'),
      title: Text('${m.homeTeam} vs ${m.awayTeam}'),
      subtitle: Text('${m.league} • ${m.status.toUpperCase()}'),
      trailing: _ScoreBadge(home: m.homeScore, away: m.awayScore),
    );
  }
}

class _ScoreBadge extends StatelessWidget {
  const _ScoreBadge({required this.home, required this.away});
  final int home;
  final int away;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: cs.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        '$home - $away',
        style: TextStyle(
          color: cs.onPrimaryContainer,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _SkeletonList extends StatelessWidget {
  const _SkeletonList();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i) => Container(
        height: 64,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      separatorBuilder: (context, i) => Divider(),
      itemCount: 8,
    );
  }
}
