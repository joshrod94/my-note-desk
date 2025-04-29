import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'functionality2/font_family_dropdown.dart';


class BasicTextMenu extends StatelessWidget {
  const BasicTextMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Row of All Basic Text Columns
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Column 1: Font Family + Font Size
            Column(
              children: [
                Row(
                  children: [
                    FontFamilyDropdown(
                      onFontFamilyChanged: (selectedFont) {
                        // Handle the selected font family change here
                        print('Selected font: $selectedFont');
                        // You might want to update the text style in your editor based on this value
                      },
                    ),
                    const SizedBox(width: 8),
                    _DropdownPlaceholder(label: 'Font Size'),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  'Fonts',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(width: 24),

            // Column 2: Bold, Italic, Underline, Strikethrough (no label)
            Column(
              children: [
                Row(
                  children: [
                    _IconButtonPlaceholder(iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/bold-text-icon.svg'),
                    const SizedBox(width: 6),
                    _IconButtonPlaceholder(iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/italic-icon.svg'),
                    const SizedBox(width: 6),
                    _IconButtonPlaceholder(iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/underline-icon.svg'),
                    const SizedBox(width: 6),
                    _IconButtonPlaceholder(iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/strikethrough-icon.svg'),
                  ],
                ),
              ],
            ),

            const SizedBox(width: 24),

            // Column 3: Highlight and Font Color (no label)
            Column(
              children: [
                Row(
                  children: [
                    _IconButtonPlaceholder(iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/highlight-marker-icon.svg'),
                    const SizedBox(width: 6),
                    _IconButtonPlaceholder(iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/font-icon.svg'),
                  ],
                ),
              ],
            ),

            const SizedBox(width: 24),

            // Column 4: Bullet List + Label
            Column(
              children: [
                _IconButtonPlaceholder(iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/list-round-bullet-icon.svg'),
                const SizedBox(height: 4),
                const Text(
                  'List',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(width: 24),

            // Column 5: Align Left, Center, Right + Label
            Column(
              children: [
                Row(
                  children: [
                    _IconButtonPlaceholder(iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/text-align-left-icon.svg'),
                    const SizedBox(width: 6),
                    _IconButtonPlaceholder(iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/text-align-center-icon.svg'),
                    const SizedBox(width: 6),
                    _IconButtonPlaceholder(iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/text-align-right-icon.svg'),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  'Alignment',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),

        const SizedBox(height: 4),

        // "Text Editing" Label centered below everything
        const Text(
          'Text Editing',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

// Reusable Dropdown Placeholder Widget
class _DropdownPlaceholder extends StatelessWidget {
  final String label;

  const _DropdownPlaceholder({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[400]!),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 12),
      ),
    );
  }
}

// Reusable Icon Button Placeholder Widget
class _IconButtonPlaceholder extends StatelessWidget {
  final String iconPath;

  const _IconButtonPlaceholder({required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(6.0),
      child: Container(
        padding: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(color: Colors.grey[400]!),
        ),
        child: SvgPicture.asset(
          iconPath,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
