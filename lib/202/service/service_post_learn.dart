import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class ServicePostView extends StatefulWidget {
  const ServicePostView({Key? key}) : super(key: key);

  @override
  State<ServicePostView> createState() => _ServicePostViewState();
}

class _ServicePostViewState extends State<ServicePostView> {
  bool _isLoading = false;
  String? title;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIDController = TextEditingController();


  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(
      baseUrl: _baseUrl,
    ));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postModel) async{
    _changeLoading();
    final response = await _dio.post('posts',data: postModel);

    if(response.statusCode == HttpStatus.created){
      setState(() {
        title = 'Başarılı';
      });
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? ''),
        actions: [
          _isLoading
              ? const CircularProgressIndicator.adaptive()
              : const SizedBox.shrink()
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: _userIDController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'User ID'),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: 'Title'),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            controller: _bodyController,
            decoration: const InputDecoration(labelText: 'Body'),
            textInputAction: TextInputAction.send,
          ),
          TextButton(onPressed:
              _isLoading ? null :
              (){
            if(_titleController.text.isNotEmpty && _bodyController.text.isNotEmpty && _userIDController.text.isNotEmpty){
              final model = PostModel(body: _bodyController.text,title: _titleController.text, userId: int.tryParse(_userIDController.text));
              _addItemToService(model);
            }
          }, child: const Text('Send')),
        ],
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    super.key,
    required PostModel? model,
  }) : _model = model;

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
