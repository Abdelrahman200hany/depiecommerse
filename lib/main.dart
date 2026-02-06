import 'package:flutter/material.dart';
import 'package:minecommerse/view/home_view.dart';

void main() {
  runApp(const Ecommerse());
}
class Ecommerse extends StatelessWidget {
  const Ecommerse({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomeView(),
    );
  }
}
