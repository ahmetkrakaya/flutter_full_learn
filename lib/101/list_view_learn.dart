import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Container(
            color: Colors.green,
            height: 300,
          ),
          const Divider(
            color: Colors.white,
            thickness: 3,
          ),
          SizedBox(
            height: 500,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.amber, width: 100),
                Container(color: Colors.red, width: 100),
                Container(color: Colors.amber, width: 100),
                Container(color: Colors.red, width: 100),
                Container(color: Colors.amber, width: 100),
                Container(color: Colors.red, width: 100),
                Container(color: Colors.amber, width: 100),
                Container(color: Colors.red, width: 100),
              ],
            ),
          ),
          const Icon(Icons.close),
        ],
      ),
    );
  }
}
