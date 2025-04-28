import 'package:flutter/material.dart';

class PrintButton extends StatelessWidget {
  const PrintButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Print',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
