import 'package:flutter/material.dart';

class FileCloseButton extends StatelessWidget {
  const FileCloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Close',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
