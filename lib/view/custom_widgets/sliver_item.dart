import 'package:flutter/material.dart';
import 'package:minecommerse/view/custom_widgets/models/product_item_model.dart';

class SliverItemlist extends StatelessWidget {
  const SliverItemlist({super.key, required this.item});
  final ProductItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(item.image),
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(
        item.title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        item.des,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: GestureDetector(
        onTap:  (){},
        child: Container(
          width:100 ,
        height: 34,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(255, 236, 196, 196),
          ),
          child: Center(
            child: Text('add to cart', style: TextStyle(fontSize: 14, color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
