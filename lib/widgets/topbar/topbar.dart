import 'package:flutter/material.dart';
import 'topbar_primary.dart';
import 'topbar_secondary.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  String selectedMenu = '';

  void onMenuSelected(String menu) {
    setState(() {
      if (selectedMenu == menu) {
        selectedMenu = ''; // Collapse if clicking the same menu
      } else {
        selectedMenu = menu;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopBarPrimary(
          onMenuSelected: onMenuSelected,
          selectedMenu: selectedMenu,
          ),
        if (selectedMenu.isNotEmpty)
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.14, // 15% height when expanded
            child: TopBarSecondary(selectedMenu: selectedMenu),
          ),
      ],
    );
  }
}

