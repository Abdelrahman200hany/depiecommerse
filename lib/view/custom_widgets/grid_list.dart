import 'package:flutter/material.dart';
import 'package:minecommerse/view/custom_widgets/grid_item.dart';
import 'package:minecommerse/view/custom_widgets/models/product_item_model.dart';

class GridList extends StatefulWidget {
  const GridList({super.key});

  @override
  State<GridList> createState() => _GridListState();
}

class _GridListState extends State<GridList> {
   List items=ProductItemModel.items;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 150/180,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => GridItem(item: items[index]),
      itemCount: items.length,
    );
  }
}

