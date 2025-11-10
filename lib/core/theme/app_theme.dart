import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    const seed = Color(0xFF1E4AD6);
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: seed),
      appBarTheme: const AppBarTheme(centerTitle: false),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
