import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minecommerse/manager/bloc/cart_bloc_bloc.dart';
import 'package:minecommerse/models/cart_model.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItem});
  final CartItemModel cartItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage('assets/images/pizza.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(
        cartItem.product.title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        cartItem.product.des,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.greenAccent,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  context.read<CartBloc>().add(
                    IncrementItem(cartItem.product.uID),
                  );
                },
                child: Center(child: Icon(Icons.add, color: Colors.white)),
              ),
            ),
          ),

          SizedBox(width: 4),
          Text(
            '${cartItem.quantity}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          SizedBox(width: 4),

          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.greenAccent,
            child: GestureDetector(
              onTap: () {
                context.read<CartBloc>().add(
                  DecrementItem(cartItem.product.uID),
                );
              },
              child: Center(child: Icon(Icons.remove, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
