import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> {
  Color _backGroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backGroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
              context: context,
              backgroundColor: Colors.redAccent,
              barrierColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              isScrollControlled: true,
              builder: (context) {
                return _SheetExample(backGroundColor: _backGroundColor);
              });
          if (result is bool) {
            setState(() {
              _backGroundColor = Colors.cyan;
            });
          }
        },
        child: const Icon(Icons.share_outlined),
      ),
    );
  }
}

class _SheetExample extends StatefulWidget {
  const _SheetExample({
    super.key,
    required Color backGroundColor,
  });

  @override
  State<_SheetExample> createState() => _SheetExampleState();
}

class _SheetExampleState extends State<_SheetExample> {
  Color _backGroundColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backGroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('data'),
            Image.network(
              'https://picsum.photos/200',
              height: 200,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _backGroundColor = Colors.green;
                  });
                  Navigator.of(context).pop<bool>(true);
                },
                child: const Text('OK')),
          ],
        ),
      ),
    );
  }
}
