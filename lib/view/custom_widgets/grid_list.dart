import 'package:flutter/material.dart';
import 'package:minecommerse/view/custom_widgets/grid_item.dart';

class GridList extends StatefulWidget {
  const GridList({super.key});

  @override
  State<GridList> createState() => _GridListState();
}

class _GridListState extends State<GridList> {
  List<GridItemModel> items = [
    GridItemModel(
      des: 'seaRach pizza ',
      image: 'assets/images/pizza.jpeg',
      title: 'pizza',
    ),
    GridItemModel(
      des: 'white pasta',
      image: 'assets/images/pasta.jpeg',
      title: 'pasta',
    ),
    GridItemModel(
      des: 'classic burger',
      image: 'assets/images/burger.jpg',
      title: 'burger',
    ),
    GridItemModel(
      des: 'gril tonna',
      image: 'assets/images/fish2.jpeg',
      title: 'fish',
    ),
    GridItemModel(
      des: 'well done ',
      image: 'assets/images/meat.jpeg',
      title: 'meat',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => GridItem(item: items[index]),
      itemCount: items.length,
    );
  }
}

class GridItemModel {
  final String image, title, des;

  GridItemModel({required this.image, required this.title, required this.des});
}
