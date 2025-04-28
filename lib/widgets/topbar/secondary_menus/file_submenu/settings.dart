import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Settings',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
