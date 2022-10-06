import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 100,
            ),
            Container(
              color: Colors.white,
              height: 100,
            ),
            Padding(
              padding: ProjectPadding.pagePaddingRight + ProjectPadding.pagePaddingVertical,
              child: const Text('Ahmet'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRight = EdgeInsets.only(right: 20);
}
