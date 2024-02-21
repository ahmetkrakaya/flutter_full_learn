import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LightTheme {
  final _lightColor = _LightColor();
  final _darkColor = _DarkColor();
  late ThemeData light;
  late ThemeData dark;

  LightTheme() {
    dark = ThemeData(
      colorScheme: const ColorScheme.dark(),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.yellowAccent),
      textTheme: ThemeData.dark().textTheme.copyWith(
          titleMedium: TextStyle(fontSize: 25, color: _darkColor._textColor)),
      buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.accent),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.red,
        indicatorSize: TabBarIndicatorSize.label,
      ),
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.zero,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.white,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Colors.redAccent,
        iconColor: Colors.white,
        border: OutlineInputBorder(),
        labelStyle: TextStyle(color: Colors.white, fontSize: 24),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );

    light = ThemeData(
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.green),
      colorScheme: const ColorScheme.light(),
      textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: TextStyle(fontSize: 25, color: _lightColor._textColor)),
    );
  }
}

class _LightColor {
  final Color _textColor = Colors.redAccent;
}

class _DarkColor {
  final Color _textColor = Colors.white;
}
