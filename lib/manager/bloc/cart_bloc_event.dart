part of 'cart_bloc_bloc.dart';

@immutable
abstract class CartEvent {}

class AddToCart extends CartEvent {
  final ProductItemModel product;
  AddToCart(this.product);
}

class IncrementItem extends CartEvent {
  final String productId;
  IncrementItem(this.productId);
}

class DecrementItem extends CartEvent {
  final String productId;
  DecrementItem(this.productId);
}
