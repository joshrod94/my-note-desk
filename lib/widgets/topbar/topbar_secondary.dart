import 'package:flutter/material.dart';

class TopBarSecondary extends StatelessWidget {
  final String selectedMenu;

  const TopBarSecondary({super.key, required this.selectedMenu});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 146, 146, 146),
      width: double.infinity,
      child: Center(
        child: Text(
          '$selectedMenu options go here',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
