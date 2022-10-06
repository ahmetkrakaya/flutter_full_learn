import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({Key? key}) : super(key: key);

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {

  int _countValue = 0;

  void _updateCountValue(bool isIncrement){
    if(isIncrement){
        _countValue++ ;
    }else{
        _countValue <= 0 ? _countValue : _countValue-- ;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const Placeholder(),
            const CounterHelloButton(),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementMethod(),
          _deIncrementButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementMethod() {
    return FloatingActionButton(
          onPressed: (){
            _updateCountValue(true);
          },
          child: const Icon(Icons.add),
        );
  }

  Padding _deIncrementButton() {
    return Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: FloatingActionButton(
            onPressed: (){
              _updateCountValue(false);
            },
            child: const Icon(Icons.remove),
          ),
        );
  }
}
