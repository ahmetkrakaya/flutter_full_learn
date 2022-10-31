import 'package:flutter/material.dart';

class MyCollectionDemo extends StatefulWidget {
  const MyCollectionDemo({Key? key}) : super(key: key);

  @override
  State<MyCollectionDemo> createState() => _MyCollectionDemoState();
}

class _MyCollectionDemoState extends State<MyCollectionDemo> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          padding: PaddingUtility().paddingHorizantal,
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return _CategoryCard(model: _items[index]);
          }),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  _model.imagePath,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _model.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      '${_model.price} ETH',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class CollectionItems{
  late final List<CollectionModel> items;

  CollectionItems(){
    items = [
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: 'Abstract Art 1',
          price: 3.1),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: 'Abstract Art 2',
          price: 3.2),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: 'Abstract Art 3',
          price: 3.3),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: 'Abstract Art 4',
          price: 3.4),
    ];
  }
}

class PaddingUtility{
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingHorizantal = const EdgeInsets.symmetric(horizontal: 20);
}


class ProjectImages{
  static const imageCollection = 'assets/images/image2.webp';
}