import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  List<int> selectedItems = [];

  void isSelected(int index, bool response) {
    response ? selectedItems.add(index) : selectedItems.remove(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(
                  context, NavigateDetailLearn(isCheck: selectedItems.contains(index)));

              if (response is bool) {
                isSelected(index, response);
              }
            },
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          );
        },
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidgetBasic(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings(),
      ),
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings(),
      ),
    );
  }
}
