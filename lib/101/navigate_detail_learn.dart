import 'package:flutter/material.dart';

class NavigateDetailLearn extends StatefulWidget {
  const NavigateDetailLearn({Key? key, this.isCheck = false}) : super(key: key);
  final bool isCheck;

  @override
  State<NavigateDetailLearn> createState() => _NavigateDetailLearnState();
}

class _NavigateDetailLearnState extends State<NavigateDetailLearn> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //ModalRoute.of(context).settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: (){
              Navigator.of(context).pop(!widget.isCheck);
            },
            icon: widget.isCheck ? const Icon(Icons.close_outlined,color: Colors.red,) : const Icon(Icons.check_outlined,color: Colors.green,),
            label: widget.isCheck ? const Text('UnCheck') : const Text('Check'),
        ),
      ),
    );
  }
}
