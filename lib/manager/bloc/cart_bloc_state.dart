part of 'cart_bloc_bloc.dart';

@immutable
class CartState {
  final List<CartItemModel> items;
  final int totalPrice;

  const CartState({this.items = const [], this.totalPrice = 0});

  CartState copyWith({List<CartItemModel>? items, int? totalPrice}) {
    return CartState(
      items: items ?? this.items,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }
}
