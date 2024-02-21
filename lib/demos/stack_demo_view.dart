import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final double _cardHeight = 70;
  final double _cardWidth = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  bottom: _cardHeight / 2,
                  child: const RandomImage(),
                ),
                Positioned(
                  height: _cardHeight,
                  width: _cardWidth,
                  bottom: 0,
                  child: _cardCustom(),
                ),
              ],
            ),
          ),
          const Spacer(flex: 6),
        ],
      ),
    );
  }

  Card _cardCustom() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: Colors.white,
      child: const Center(
        child: Text(
          'Ahmet',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
