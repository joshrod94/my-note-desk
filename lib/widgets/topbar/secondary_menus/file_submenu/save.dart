import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Save',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
