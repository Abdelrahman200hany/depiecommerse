
import 'package:flutter/material.dart';

class SwitchBottom extends StatelessWidget {
  const SwitchBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 236, 196, 196),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.transparent),
              child: Center(
                child: Text(
                  'List View',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.red),
              child: Center(
                child: Text(
                  'List View',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
