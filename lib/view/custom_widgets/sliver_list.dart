import 'package:flutter/material.dart';
import 'package:minecommerse/view/custom_widgets/models/product_item_model.dart';
import 'package:minecommerse/view/custom_widgets/product_item_view.dart';
import 'package:minecommerse/view/custom_widgets/sliver_item.dart';

class CustomSliverList extends StatefulWidget {
  const CustomSliverList({super.key});

  @override
  State<CustomSliverList> createState() => _CustomSliverListState();
}

class _CustomSliverListState extends State<CustomSliverList> {
  List items = ProductItemModel.items;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              ProductItemView.route,
              arguments: items[index],
            );
          },
          child: SliverItemlist(item: items[index]),
        ),
      ),
    );
  }
}
