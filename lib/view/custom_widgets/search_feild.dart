
import 'package:flutter/material.dart';

class CustomSearchAppBar extends StatelessWidget {
  const CustomSearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'search For food',
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: Colors.red.withValues(alpha: 0.3),
          filled: true,
          prefixIcon: Icon(Icons.search, color: Colors.red),
          border: buildBorder(),
          enabledBorder: buildBorder(),

          focusedBorder: buildBorder(),
        ),
      ),
    );
  }
}

buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: Colors.white),
  );
}
