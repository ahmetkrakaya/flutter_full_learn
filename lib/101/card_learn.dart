import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const _CustomCard(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ahmet')),
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.onPrimary,
            shape: const CircleBorder(),
            child: const SizedBox(
              height: 100,
              width: 300,
            ),
          ),
          Card(
            color: Theme.of(context).colorScheme.onPrimary,
            // shape: const StadiumBorder(),
            child: const SizedBox(
              height: 100,
              width: 300,
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  //final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      color: Theme.of(context).colorScheme.error,
      //shape: roundedRectangleBorder,
      child: child,
    );
  }
}

//Borders
//StadiumBorder, CircleBorder, RoundedRectangleBorder
