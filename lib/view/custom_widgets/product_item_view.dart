import 'package:flutter/material.dart';
import 'package:minecommerse/view/custom_widgets/container_details_list.dart';
import 'package:minecommerse/view/custom_widgets/header_product_item_des.dart';
import 'package:minecommerse/view/custom_widgets/ingredient_container.dart';
import 'package:minecommerse/view/custom_widgets/models/product_item_model.dart';
import 'package:minecommerse/view/custom_widgets/stack_picture.dart';

class ProductItemView extends StatelessWidget {
  const ProductItemView({super.key, required this.product});
  final ProductItemModel product;
  static const String route = 'ProductItemView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ProductItemDetails(product: product),
              SizedBox(height: 24),

              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
                child: Center(
                  child: Text(
                    'add to card',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductItemDetails extends StatelessWidget {
  const ProductItemDetails({super.key, required this.product});

  final ProductItemModel product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Stackpicture(iamge: product.image),
            SizedBox(height: 8),
            HeaderProductItemDescrition(product: product),
            SizedBox(height: 8),
            ContainerDetailslist(),
            SizedBox(height: 8),
            Text(
              'Description',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 6),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    '. It is commonly customized with cheese, crisp lettuce, tomato, onions, pickles, bacon, and condiments like ketchup, mustard, or mayo',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,

                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(width: 2),
                Text(
                  'see more ',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Ingredient',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 12,
              direction: Axis.horizontal,

              children: [
                IngredientContainer(item: 'tomato'),
                IngredientContainer(item: 'lecttuce'),
                IngredientContainer(item: 'meat'),
                IngredientContainer(item: 'bread'),
                IngredientContainer(item: 'chease'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
