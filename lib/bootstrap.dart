import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/theme/app_theme.dart';
import 'routes/app_router.dart';

Future<void> bootstrap(Widget app) async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: app));
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = createRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: router,
      locale: const Locale('en'),
      supportedLocales: const [Locale('en'), Locale('ar')],
    );
  }
}
