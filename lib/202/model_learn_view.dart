import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  PostModel8 user9 = PostModel8(body: 'a');

  @override
  void initState() {
    super.initState();
    final user1 = PostModel1()
    ..userId = 1
    ..title = 'AK';
    user1.body = 'Hello';

    final user2 = PostModel2(1,1,'a','b');
    user2.body = 'Hello';

    final user3 = PostModel3(2,2,'a','b');
    //user3.body = 'aa'; // final olduğu için değişmez.

    final user4 = PostModel4(userId: 3, id: 3, title: 'a', body: 'b');
    //user4.body = 'aa'; // final olduğu için değişmez.

    final user5 = PostModel5(userId: 4, id: 4, title: 'a', body: 'b');
    
    final user6 = PostModel6(userId: 5, id: 5, title: 'a', body: 'b');

    final user7 = PostModel7();

    final user8 = PostModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            user9 = user9.copyWith(title: 'vb');
            user9.updateBody('body Updated');
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? 'Not has any data'),
      ),
    );
  }
}
