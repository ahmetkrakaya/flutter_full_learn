import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.height = 100, this.width = 100})
      : super(key: key);
  final imageURL = 'https://picsum.photos/200/300';
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageURL,
      height: height,
      width: width,
      fit: BoxFit.cover,
    );
  }
}
