import 'package:flutter/material.dart';

class EditorArea extends StatelessWidget {
  const EditorArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          'Editor Placeholder',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
