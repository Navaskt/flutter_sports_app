import 'package:flutter_sports_app/bootstrap.dart';

import 'core/config/env.dart';

void main() {
  Env.init(
    flavor: AppFlavor.prod,
    apiBaseUrl: const String.fromEnvironment(
      'API_BASE_URL',
      defaultValue: 'https://api.example.com',
    ),
    wsUrl: const String.fromEnvironment(
      'WS_URL',
      defaultValue: 'wss://ws.example.com',
    ),
  );
  bootstrap(const RootApp());
}
