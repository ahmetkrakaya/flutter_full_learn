import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

abstract class IPostService{
  Future<bool> addItemToService(PostModel postModel);
  Future<bool> putItemToService(PostModel postModel, int id);
  Future<bool> deleteItem(PostModel postModel, int id);
  Future<List<PostModel>?> fetchPostItems();
}

class PostService implements IPostService{

  final Dio _dio;
  PostService() : _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<bool> addItemToService(PostModel postModel) async{
    final response = await _dio.post(_PostServicePaths.posts.name,data: postModel);

    return response.statusCode == HttpStatus.created;
  }

  @override
  Future<bool> putItemToService(PostModel postModel, int id) async{
    final response = await _dio.put('${_PostServicePaths.posts.name}/$id',data: postModel);

    return response.statusCode == HttpStatus.ok;
  }

  @override
  Future<bool> deleteItem(PostModel postModel, int id) async{
    final response = await _dio.delete('${_PostServicePaths.posts.name}/$id');

    return response.statusCode == HttpStatus.ok;
  }

  @override
  Future<List<PostModel>?> fetchPostItems() async{
    final response = await _dio.get(_PostServicePaths.posts.name);

    if(response.statusCode == HttpStatus.ok){
      final _datas = response.data;

      if(_datas is List){
          return _datas.map((e) => PostModel.fromJson(e)).toList();
      }
    }
    return null;
  }
}

enum _PostServicePaths { posts, comments }