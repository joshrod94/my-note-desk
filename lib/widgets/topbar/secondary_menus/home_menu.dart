import 'package:flutter/material.dart';
import 'home_submenu/clipboard.dart'; // Clipboard Section
import 'home_submenu/basic_text.dart'; // Basic Text Section

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ClipboardMenu(),
            SizedBox(width: 32),
            BasicTextMenu(),
          ],
        ),
      ),
    );
  }
}
