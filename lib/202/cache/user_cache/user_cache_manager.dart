import 'dart:convert';

import 'package:flutter_full_learn/202/cache/shared_manager.dart';

import '../shared_learn_cache.dart';
import '../user_model.dart';

class UserCacheManager{
  
  final SharedManager sharedManager;

  UserCacheManager(this.sharedManager);
  
  Future<void> saveItems(final List<User> items) async{
    // Compute
    final _items = items.map((element) => jsonEncode(element.toJson())).toList();
    await sharedManager.saveStringItems(SharedKeys.users, _items);
  }

  List<User>? getItems(){
    final itemString = sharedManager.getStringList(SharedKeys.users);
    if(itemString?.isNotEmpty ?? false){
      return itemString!.map((element) {
        final json = jsonDecode(element);

        return User('aa', 'aa', 'a');
      }).toList();
    }
    return null;
  }
  
}