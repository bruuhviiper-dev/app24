import 'package:flutter/material.dart';

/// Tema do app — verde/vida (crescimento, natureza, serenidade).
class AppTheme {
  AppTheme._();

  static const brand = Color(0xFF12A150); // verde vida
  static const brandDark = Color(0xFF0B7A3B);
  static const gold = Color(0xFF9BE7B4);

  /// Gradiente da "frase do dia" e da marca.
  static const hero = [Color(0xFF11998E), Color(0xFF38EF7D)];

  static LinearGradient gradient(List<Color> colors) => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: colors,
      );

  static ThemeData light([Color accent = brand]) {
    return ThemeData(
      useMaterial3: true,
      colorScheme:
          ColorScheme.fromSeed(seedColor: accent, brightness: Brightness.light),
      scaffoldBackgroundColor: const Color(0xFFF3FBF6),
      appBarTheme: const AppBarTheme(centerTitle: false),
    );
  }

  static ThemeData dark([Color accent = brand]) {
    return ThemeData(
      useMaterial3: true,
      colorScheme:
          ColorScheme.fromSeed(seedColor: accent, brightness: Brightness.dark),
      scaffoldBackgroundColor: const Color(0xFF0E1A14),
      appBarTheme: const AppBarTheme(centerTitle: false),
    );
  }
}
