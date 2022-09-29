import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_sizedbox_learn.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Samples'),
      ),
      body: const Text('Merhaba'),
      extendBody: true,
      bottomNavigationBar: Container(
        height: 150,
        decoration: ProjectContainerDecoration(),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: '1'),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm_outlined), label: '2'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                height: 200,
              ),
          );
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      backgroundColor: Colors.red,
    );
  }
}
