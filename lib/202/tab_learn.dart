import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 5;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _myTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _myTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_myTabViews.home.index);
          },
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notchedValue,
          shape: const CircularNotchedRectangle(),
          child: _myTabBar(),
        ),
        body: _tabBarView(),
      ),
    );
  }

  TabBar _myTabBar() {
    return TabBar(
      controller: _tabController,
      indicatorColor: Colors.white,
      //isScrollable: true,
      tabs: _myTabViews.values
          .map((e) => Tab(
                text: e.name,
              ))
          .toList(),
    );
  }

  TabBarView _tabBarView() {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [
        const ImageLearn(),
        IconLearn(),
        IconLearn(),
        IconLearn(),
      ],
    );
  }
}

enum _myTabViews { home, settings, favorite, profile }

extension _myTabViewExtension on _myTabViews {}
