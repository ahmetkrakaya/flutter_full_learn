import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.white,
            thickness: 2,
          );
        },
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                const SizedBox(height: 8),
                const Expanded(child: RandomImage()),
                Text('${index + 1}'),
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
