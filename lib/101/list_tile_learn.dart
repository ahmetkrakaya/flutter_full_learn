import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                visualDensity: VisualDensity(vertical: 4),
                title: const Text('Hello Cici'),
                subtitle: const Text('on sale for \n4.3 ETH'),
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: const RandomImage(
                      width: 70,
                      height: 80,
                    )),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
