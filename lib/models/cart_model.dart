import 'package:minecommerse/models/product_item_model.dart';

class CartItemModel {
  final ProductItemModel product;
  final int quantity;

  CartItemModel({required this.product, this.quantity = 1});

  CartItemModel copyWith({int? quantity}) {
    return CartItemModel(
      product: this.product,
      quantity: quantity ?? this.quantity,
    );
  }
}
