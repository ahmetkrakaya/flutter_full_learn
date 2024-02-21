import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: ColorItems.sulu,
        ),
      ),
    );
  }
} //

class ColorItems {
  static const Color porsche = Color(0xffEDBF61);
  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
