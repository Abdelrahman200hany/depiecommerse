import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:minecommerse/models/cart_model.dart';
import 'package:minecommerse/models/product_item_model.dart';

part 'cart_bloc_event.dart';
part 'cart_bloc_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState()) {
    on<AddToCart>(_onAddToCart);
    on<IncrementItem>(_onIncrementItem);
    on<DecrementItem>(_onDecrementItem);
  }

  void _onAddToCart(AddToCart event, Emitter<CartState> emit) {
    final items = List<CartItemModel>.from(state.items);
    final index = items.indexWhere(
      (item) => item.product.uID == event.product.uID,
    );

    if (index != -1) {
      items[index] = items[index].copyWith(quantity: items[index].quantity + 1);
    } else {
      items.add(CartItemModel(product: event.product));
    }

    emit(state.copyWith(items: items, totalPrice: _calculateTotal(items)));
  }

  void _onIncrementItem(IncrementItem event, Emitter<CartState> emit) {
    final items = List<CartItemModel>.from(state.items);
    final index = items.indexWhere(
      (item) => item.product.uID == event.productId,
    );

    if (index != -1) {
      items[index] = items[index].copyWith(quantity: items[index].quantity + 1);
      emit(state.copyWith(items: items, totalPrice: _calculateTotal(items)));
    }
  }

  void _onDecrementItem(DecrementItem event, Emitter<CartState> emit) {
    final items = List<CartItemModel>.from(state.items);
    final index = items.indexWhere(
      (item) => item.product.uID == event.productId,
    );

    if (index != -1) {
      if (items[index].quantity > 1) {
        items[index] = items[index].copyWith(
          quantity: items[index].quantity - 1,
        );
      } else {
        items.removeAt(index);
      }
      emit(state.copyWith(items: items, totalPrice: _calculateTotal(items)));
    }
  }

  int _calculateTotal(List<CartItemModel> items) {
    return items.fold(
      0,
      (sum, item) => sum + (item.product.price * item.quantity),
    );
  }
}
