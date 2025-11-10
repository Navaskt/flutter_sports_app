import 'package:flutter_sports_app/bootstrap.dart';

import 'core/config/env.dart';

void main() {
  Env.init(
    flavor: AppFlavor.dev,
    apiBaseUrl: const String.fromEnvironment(
      'API_BASE_URL',
      defaultValue: 'https://dev.api.example.com',
    ),
    wsUrl: const String.fromEnvironment(
      'WS_URL',
      defaultValue: 'wss://dev.ws.example.com',
    ),
  );
  bootstrap(const RootApp());
}
