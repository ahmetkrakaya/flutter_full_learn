import 'package:flutter/material.dart';

enum _MyColors { red, yellow, blue }

class ColorViewDemo extends StatefulWidget {
  const ColorViewDemo({Key? key, this.initialColor}) : super(key: key);
  final Color? initialColor;

  @override
  State<ColorViewDemo> createState() => _ColorViewDemoState();
}

class _ColorViewDemoState extends State<ColorViewDemo> {
  Color? _backgroundColor = Colors.transparent;

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  void didUpdateWidget(covariant ColorViewDemo oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTap,
        items: const [
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red), label: 'Red'),
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: 'Yellow'),
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue), label: 'Blue'),
        ],
      ),
    );
  }

  void _colorOnTap(int value) {
    switch (_MyColors.values[value]) {
      case _MyColors.red:
        changeBackgroundColor(Colors.red);
        break;
      case _MyColors.yellow:
        changeBackgroundColor(Colors.yellow);
        break;
      case _MyColors.blue:
        changeBackgroundColor(Colors.blue);
        break;
      default:
        changeBackgroundColor(Colors.transparent);
        break;
    }

    // if (value == _MyColors.red.index) {
    //   changeBackgroundColor(Colors.red);
    // } else if (value == _MyColors.yellow.index) {
    //   changeBackgroundColor(Colors.yellow);
    // } else if (value == _MyColors.blue.index) {
    //   changeBackgroundColor(Colors.blue);
    // }
  }
}

class _ColorContainer extends StatelessWidget {
  final Color color;
  const _ColorContainer({
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
