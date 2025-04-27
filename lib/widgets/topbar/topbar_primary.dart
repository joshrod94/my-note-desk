import 'package:flutter/material.dart';

class TopBarPrimary extends StatelessWidget {
  final void Function(String) onMenuSelected;
  final String selectedMenu;

  const TopBarPrimary({super.key, required this.onMenuSelected, required this.selectedMenu});

 @override
  Widget build(BuildContext context) {
    final menus = ['File', 'Home', 'Insert', 'Help'];
    
    // Calculate fixed width for menu items
    final double menuItemWidth = 70.0;

    return Container(
      color: Colors.grey[200],
      height: MediaQuery.of(context).size.height * 0.06, // 6% height
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end, // Align text and lines properly
        children: menus.map((menu) {
          final isSelected = selectedMenu == menu;

          return GestureDetector(
            onTap: () => onMenuSelected(menu),
            child: Container(
              width: menuItemWidth,  // Fixed width for each menu item
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Invisible bold text to reserve space
                          Opacity(
                            opacity: 0.0,
                            child: Text(
                              menu,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          // Visible text with actual style
                          Text(
                            menu,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.deepPurple : Colors.transparent, // Change color based on selection
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  // Add padding underneath the line
                  const SizedBox(height: 6),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
