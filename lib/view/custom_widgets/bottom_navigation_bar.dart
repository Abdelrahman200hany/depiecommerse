import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minecommerse/manager/bloc/cart_bloc_bloc.dart';

class BuildBottomNavigationBar extends StatefulWidget {
  const BuildBottomNavigationBar({super.key, required this.onChange});
  final ValueChanged<int> onChange;

  @override
  State<BuildBottomNavigationBar> createState() =>
      _BuildBottomNavigationBarState();
}

class _BuildBottomNavigationBarState extends State<BuildBottomNavigationBar> {
  int curretIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.grey,
      currentIndex: curretIndex,
      onTap: (value) {
        curretIndex = value;
        setState(() {});
        widget.onChange(value);
      },

      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Badge.count(
            count: context.watch<CartBloc>().state.items.length,
            child: Icon(Icons.shopping_cart),
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
