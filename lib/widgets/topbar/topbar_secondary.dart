import 'package:flutter/material.dart';
import 'secondary_menus/file_menu.dart'; // Import your FileMenu widget

class TopBarSecondary extends StatelessWidget {
  final String selectedMenu;

  const TopBarSecondary({super.key, required this.selectedMenu});

  @override
  Widget build(BuildContext context) {
    Widget content;

    switch (selectedMenu) {
      case 'File':
        content = const FileMenu();
        break;
      default:
        content = Center(
          child: Text(
            '$selectedMenu options coming soon!',
            style: const TextStyle(fontSize: 18),
          ),
        );
        break;
    }

    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      child: content,
    );
  }
}
