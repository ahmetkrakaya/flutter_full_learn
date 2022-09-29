import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 500),
          ),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            height: 100,
            constraints: const BoxConstraints(
              maxWidth: 150,
              minWidth: 100,
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
            child: Text('a' * 20),
          ),
        ],
      ),
    );
  }
}

class ProjectUtility{
  static BoxDecoration boxDecoration = BoxDecoration(
  shape: BoxShape.rectangle,
  border: Border.all(
  width: 2,
  color: Colors.white,
  ),
  boxShadow: const [
  BoxShadow(
  color: Colors.green,
  offset: Offset(0.1, 1),
  blurRadius: 18,
  ),
  ],
  borderRadius: BorderRadius.circular(12),
  gradient: const LinearGradient(colors: [Colors.green, Colors.blueAccent]),

  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          shape: BoxShape.rectangle,
          border: Border.all(
            width: 2,
            color: Colors.white,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.green,
              offset: Offset(0.1, 1),
              blurRadius: 18,
            ),
          ],
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(colors: [Colors.green, Colors.blueAccent]),
        );
}
