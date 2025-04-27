import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: MediaQuery.of(context).size.width * 0.2,
      child: const Center(
        child: Text(
          'Sidebar Placeholder',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
