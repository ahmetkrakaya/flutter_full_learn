import 'package:flutter/material.dart';
import 'package:flutter_full_learn/demos/color_view_demos.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({Key? key}) : super(key: key);

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                setState(() {
                  _backGroundColor = Colors.pink;
                });
              },
              icon: const Icon(Icons.clear),
          ),
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(child: ColorViewDemo(initialColor: _backGroundColor,)),
        ],
      ),
    );
  }
}
