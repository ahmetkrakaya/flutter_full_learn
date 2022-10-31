import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';

import '202/form_learn_view.dart';

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
      theme: LightTheme().theme,
      /*
      ThemeData.dark().copyWith(
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
          labelStyle: TextStyle(color: Colors.white,fontSize: 24),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
      */
      home: const FormLearnView(),
    );
  }
}
