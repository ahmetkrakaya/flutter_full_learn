import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.green;
                  } else {
                    return Colors.white;
                  }
                }),
              ),
              child: const Text('Text Button'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated Button'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chair_alt),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.account_balance_rounded),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.adb_sharp),
              label: const Text('Button.icon'),
            ),
            InkWell(
              onTap: () {},
              child: const Text('InkWell Widget'),
            ),
            Container(
              height: 100,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColorDark,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 40, left: 40),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//Borders:
// CircleBorder(), RoundedRectangleBorder()