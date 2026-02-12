import 'package:flutter/material.dart';
import 'package:minecommerse/view/cart_view.dart';
import 'package:minecommerse/view/custom_widgets/bottom_navigation_bar.dart';
import 'package:minecommerse/view/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const route = 'MainView';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BuildBottomNavigationBar(
        onChange: (value) {
          currentIndex = value;
          setState(() {});
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [HomeView(), CartView(), SizedBox()],
      ),
    );
  }
}
