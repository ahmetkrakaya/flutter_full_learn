import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: 300,
            child: MyImages(name: ImageItems().appleWithBook,)
          ),
          Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/327px-Apple-book.svg.png',
            errorBuilder: (context, error, stackTree) => Icon(Icons.abc_outlined),
          ),
        ],
      ),
    );
  }
}

class ImageItems{
  final String appleWithBook = 'image2.webp';
}

class MyImages extends StatelessWidget {
  const MyImages({Key? key,required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath(), fit: BoxFit.cover,);;
  }

  String _nameWithPath() => 'assets/images/$name';
}
