import 'package:flutter/material.dart';

class ContainerDetailslist extends StatelessWidget {
  const ContainerDetailslist({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ContainerDetails(counter: '4.8', title: '128 review', icon: Icons.star),
        ContainerDetails(counter: '20', title: 'mins', icon: Icons.alarm),
        ContainerDetails(
          counter: '350',
          title: 'KCAl',
          icon: Icons.local_fire_department,
        ),
      ],
    );
  }
}

class ContainerDetails extends StatelessWidget {
  const ContainerDetails({
    super.key,
    required this.icon,
    required this.title,
    required this.counter,
  });

  final IconData icon;
  final String counter, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
        width: 80,

      decoration: BoxDecoration(
borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 0.1),
      ),
      child: Center(
        child: Column(
          spacing: 3,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.red),
            Text(
              counter,
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
