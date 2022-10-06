import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {

  final _pageController = PageController(/*viewportFraction: 0.9*/);
  int _currentPageIndex = 0;

  void _updatePageIndex(int index){
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('$_currentPageIndex'),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: FloatingActionButton(
              onPressed: (){
                _pageController.previousPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.slowMiddle,
                );
              },
              child: Icon(Icons.chevron_left),
            ),
          ),
          FloatingActionButton(
            onPressed: (){
              _pageController.nextPage(
                duration: _DurationUtility._durationLow,
                curve: Curves.slowMiddle,
              );
            },
            child: Icon(Icons.chevron_right),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        padEnds: false,
        onPageChanged: _updatePageIndex,
        children: [
          ImageLearn(),
          IconLearn(),
          StackLearn(),
        ],
      ),
    );
  }
}

class _DurationUtility{
  static const _durationLow = Duration(seconds: 1);
}
