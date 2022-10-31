import 'package:flutter/material.dart';
import 'package:flutter_full_learn/demos/password_text_field.dart';

class WidgetSizeEnumLearnView extends StatefulWidget {
  const WidgetSizeEnumLearnView({Key? key}) : super(key: key);

  @override
  State<WidgetSizeEnumLearnView> createState() => _WidgetSizeEnumLearnViewState();
}

class _WidgetSizeEnumLearnViewState extends State<WidgetSizeEnumLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          PasswordTextField(),
          Card(
            child: Container(
              height: WidgetSizes.normalCardHeight.value(),
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

enum WidgetSizes{ normalCardHeight, circleProfileWidth }

extension WidgetSizeExtension on WidgetSizes {

  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30;
      case WidgetSizes.circleProfileWidth:
        return 25;
    }
  }
}