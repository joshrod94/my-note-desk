import 'package:flutter/material.dart';

class ExportButton extends StatefulWidget {
  const ExportButton({super.key});

  @override
  State<ExportButton> createState() => _ExportButtonState();
}

class _ExportButtonState extends State<ExportButton> {
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
                'Export',
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
          const Text('Export as PDF', style: TextStyle(fontSize: 16)),
          const SizedBox(width: 16),
          const Text('Export as DOCX', style: TextStyle(fontSize: 16)),
          const SizedBox(width: 16),
          const Text('Export as TXT', style: TextStyle(fontSize: 16)),
        ],
      ],
    );
  }
}
