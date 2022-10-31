import 'package:flutter/material.dart';

class LightTheme{
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTheme(){
    theme = ThemeData(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.green),

      colorScheme: const ColorScheme.light(
        
      ),

      textTheme: ThemeData.light().textTheme.copyWith(
        subtitle1: TextStyle(fontSize: 25,color: _lightColor._textColor)),
    );
  }
}

class _LightColor{
  final Color _textColor = Colors.redAccent;
}