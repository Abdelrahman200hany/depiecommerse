
import 'package:flutter/material.dart';
import 'package:minecommerse/view/custom_widgets/models/product_item_model.dart';

class HeaderProductItemDescrition extends StatelessWidget {
  const HeaderProductItemDescrition({
    super.key,
    required this.product,
  });

  final ProductItemModel product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        product.title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Text(
        r'$''${product.price}',
        style: TextStyle(
          color: Colors.red,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
