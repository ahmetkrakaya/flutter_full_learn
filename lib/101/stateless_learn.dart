import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    var text2 = 'Mustafa';
    var text3 = 'Hatice';
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(
            text: text2,
          ),
          TitleTextWidget(
            text: text3,
          ),
          buildSizedBox(),
          const TitleTextWidget(
            text: 'Nazif',
          ),
          const TitleTextWidget(
            text: 'Ahmet',
          ),
          const TitleTextWidget(
            text: 'Ebrar',
          ),
          buildSizedBox(),
          const _CustomContainer(),
        ],
      ),
    );
  }

  SizedBox buildSizedBox() => const SizedBox(
        height: 10,
      );
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
