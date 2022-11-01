import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SharedStorageLearn extends StatefulWidget {
  const SharedStorageLearn({Key? key}) : super(key: key);

  @override
  State<SharedStorageLearn> createState() => _SharedStorageLearnState();
}

enum _SecureKeys { token }

class _SharedStorageLearnState extends State<SharedStorageLearn> {
  final _storage = const FlutterSecureStorage();
  String _title = '';

  void saveItems(String data){
    setState(() {
      _title = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getSecureItems();
  }

  Future<void> getSecureItems() async{
    _title = await _storage.read(key: _SecureKeys.token.name) ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: TextField(
        onChanged: saveItems,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async{
          await _storage.write(key: _SecureKeys.token.name, value: _title);
        },
        label: const Text('Save'),
      ),
    );
  }
}
