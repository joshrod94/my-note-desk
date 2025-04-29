import 'package:flutter/material.dart';
import 'secondary_menus/file_menu.dart'; // Import File Menu
import 'secondary_menus/home_menu.dart'; // <-- Import Home Menu too!

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
      case 'Home':
        content = const HomeMenu(); // <-- Wire HomeMenu correctly
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

