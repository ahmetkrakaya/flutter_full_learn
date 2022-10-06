import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('a');
  }
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('c');
  }
  
  @override
  void didUpdateWidget(covariant StatefulLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('b');
  }

  @override
  void dispose() {
    super.dispose();
    _message = '';
  }

  void _computeName(){
    _isOdd ? _message = 'Tek': _message = 'Çift';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isOdd ? Text(_message) : Text(_message),
      ),
      body: _isOdd ? TextButton(onPressed: (){}, child: Text(widget.message)) : ElevatedButton(onPressed: (){
        setState(() {
          _message = 'a';
        });
      }, child: Text(widget.message)),
    );
  }
}
