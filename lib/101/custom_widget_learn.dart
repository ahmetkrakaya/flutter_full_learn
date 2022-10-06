import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  CustomWidgetLearn({Key? key}) : super(key: key);

  final String title = 'Food';
  final String addCard = 'Add to Card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomButton(title: addCard,onPressed: (){},),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          CustomButton(title: title,onPressed: (){},),
        ],
      ),
    );
  }
}

class _ColorUtility {
  final Color redColor = Colors.redAccent;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final normalPadding = const EdgeInsets.all(8);
  final largePadding = const EdgeInsets.all(16);
}

class CustomButton extends StatelessWidget with _ColorUtility, _PaddingUtility {
  CustomButton({Key? key, required this.title, required this.onPressed}) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: redColor, shape: const StadiumBorder()),
      child: Padding(
        padding: largePadding,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
