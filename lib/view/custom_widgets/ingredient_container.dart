
import 'package:flutter/material.dart';

class IngredientContainer extends StatelessWidget {
  const IngredientContainer({super.key, required this.item});
  final String item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 99, 97, 97),
          width: 0.1,
        ),
      ),

      child: Text(
        item,
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
