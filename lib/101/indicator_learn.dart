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
      body: CenterCircularIndicator(),
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
