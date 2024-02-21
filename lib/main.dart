import 'package:flutter/material.dart';
import '101/navigation_learn.dart';
import '202/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learn',
      debugShowCheckedModeBanner: false,
      theme: LightTheme().dark,
      home: const NavigationLearn(),
    );
  }
}
