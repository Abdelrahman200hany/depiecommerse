import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minecommerse/manager/bloc/cart_bloc_bloc.dart';
import 'package:minecommerse/view/custom_widgets/cart_item.dart';
import 'package:minecommerse/view/custom_widgets/total_price.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    return ListView.builder(
                      itemCount: state.items.length,
                      itemBuilder: (context, index) {
                        final item = state.items[index];
                        return Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: CartItem(cartItem: item),
                        );
                      },
                    );
                  
                  },
                ),
              ),
              Spacer(),
            TotalPriceWidget(),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
