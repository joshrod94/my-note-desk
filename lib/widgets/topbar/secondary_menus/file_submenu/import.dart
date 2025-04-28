import 'package:flutter/material.dart';

class ImportButton extends StatelessWidget {
  const ImportButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Import',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
