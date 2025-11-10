import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/matches/presentation/screens/live_match_screen.dart';
import '../features/matches/presentation/screens/match_details_screen.dart';

GoRouter createRouter() => GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LiveMatchesScreen(),
      routes: [
        GoRoute(
          path: 'match/:id',
          builder: (context, state) =>
              MatchDetailsScreen(matchId: state.pathParameters['id']!),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) =>
      Scaffold(body: Center(child: Text(state.error.toString()))),
);
