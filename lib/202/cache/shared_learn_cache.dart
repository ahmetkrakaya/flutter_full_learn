import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/cache/shared_manager.dart';
import 'package:flutter_full_learn/202/cache/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({Key? key}) : super(key: key);

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStateful<SharedLearn> {
  int _currentValue = 0;
  late final SharedManager _manager;

  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
    _initialize();
  }

  Future<void> _initialize() async {
    changeLoading();
    await _manager.init();
    changeLoading();
    getDefaultValue();
  }

  Future<void> getDefaultValue() async {
    _onChangeValue(_manager.getString(SharedKeys.counter) ?? '');
  }

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentValue.toString()),
        actions: [
          _loading(context),
        ],
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              _onChangeValue(value);
            },
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _saveValueButton(),
          _removeValueButton(),
        ],
      ),
    );
  }

  SingleChildRenderObjectWidget _loading(BuildContext context) {
    return isLoading
            ? Center(
                child: CircularProgressIndicator(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),)
            : const SizedBox.shrink();
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
      child: const Icon(Icons.save_outlined),
      onPressed: () async {
        changeLoading();
        await _manager.saveString(SharedKeys.counter, _currentValue.toString());
        changeLoading();
      },
    );
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
      child: const Icon(Icons.remove_outlined),
      onPressed: () async {
        changeLoading();
        _manager.removeItem(SharedKeys.counter);
        _currentValue = 0;
        changeLoading();
      },
    );
  }
}

class UserItem {
  late final List<User> users;

  UserItem() {
    users = [
      User('vb', '11', 'vb10.dev'),
      User('ak', '22', 'ahmet.dev'),
      User('nk', '33', 'nk.dev'),
    ];
  }
}

//Generic
abstract class LoadingStateful<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
