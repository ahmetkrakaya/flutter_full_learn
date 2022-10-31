import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool _isVisible = false;
  bool _isOpacity = true;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: _DurationItems.durationLow,
    );
  }

  void _visibleChange() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _opacityChange() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _visibleChange();
          controller.animateTo(_isVisible ? 1 : 0);
        },
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
                duration: _DurationItems.durationLow,
                opacity: _isOpacity ? 1 : 0,
                child: const Text('data')),
            trailing: IconButton(
              onPressed: () {
                _opacityChange();
              },
              icon: const Icon(Icons.precision_manufacturing_outlined),
            ),
          ),
          AnimatedDefaultTextStyle(
            style: (_isVisible
                    ? context.textTheme().displayLarge
                    : context.textTheme().titleMedium) ??
                const TextStyle(),
            duration: _DurationItems.durationLow,
            child: const Text('data'),
          ),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
          ),
          AnimatedContainer(
            duration: _DurationItems.durationLow,
            height: MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.height * 0.2,
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
          ),
          Expanded(
            child: Stack(
              children: const [
                AnimatedPositioned(
                  top: 20,
                    curve: Curves.elasticIn,
                    duration: _DurationItems.durationLow,
                    child: Text('aaa'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: _DurationItems.durationLow,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
  static const durationMedium = Duration(seconds: 2);
  static const durationLot = Duration(seconds: 3);
}
