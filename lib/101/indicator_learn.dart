import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CenterCircularIndicator(),
        ],
      ),
      body: const LinearProgressIndicator(
        value: 0.7,
        backgroundColor: Colors.white,
        color: Colors.redAccent,
      ),
    );
  }
}

class CenterCircularIndicator extends StatelessWidget {
  const CenterCircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: 10,
        value: 0.8,
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
