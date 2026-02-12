import 'package:flutter/material.dart';

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
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
