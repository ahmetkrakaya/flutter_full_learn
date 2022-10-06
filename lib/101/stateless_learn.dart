import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
           const TitleTextWidget(
            text: 'ahmet',
          ),
           const TitleTextWidget(
            text: 'nazif',
          ),
           buildSizedBox(),
           const TitleTextWidget(
            text: 'ebrar',
          ),
           const TitleTextWidget(
            text: 'mustafa',
          ),
           const TitleTextWidget(
            text: 'hatice',
          ),
           const _CustomContainer(),
          buildSizedBox(),
        ],
      ),
    );
  }

  SizedBox buildSizedBox() => const SizedBox(height: 10,);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
