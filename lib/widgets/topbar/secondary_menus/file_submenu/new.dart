import 'package:flutter/material.dart';

class NewButton extends StatefulWidget {
  const NewButton({super.key});

  @override
  State<NewButton> createState() => _NewButtonState();
}

class _NewButtonState extends State<NewButton> {
  bool showSubmenu = false;

  void toggleSubmenu() {
    setState(() {
      showSubmenu = !showSubmenu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: toggleSubmenu,
          child: Row(
            children: [
              const Text(
                'New',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(
                showSubmenu ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              ),
            ],
          ),
        ),
        if (showSubmenu) ...[
          const SizedBox(width: 16),
          const Text('New Category', style: TextStyle(fontSize: 16)),
          const SizedBox(width: 16),
          const Text('New Section', style: TextStyle(fontSize: 16)),
          const SizedBox(width: 16),
          const Text('New Page', style: TextStyle(fontSize: 16)),
        ]
      ],
    );
  }
}
