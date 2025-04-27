import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      height: MediaQuery.of(context).size.height * 0.15,
      width: double.infinity,
      child: const Center(
        child: Text(
          'Topbar Placeholder',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
