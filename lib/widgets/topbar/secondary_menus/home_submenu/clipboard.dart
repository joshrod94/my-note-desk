import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClipboardMenu extends StatelessWidget {
  const ClipboardMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Row of Clipboard Buttons
        Row(
          children: [
            _ClipboardButton(
              label: 'Paste',
              iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/paste-icon.svg',
              onTap: () {},
            ),
            const SizedBox(width: 16),
            _ClipboardButton(
              label: 'Cut',
              iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/cut-icon.svg',
              onTap: () {},
            ),
            const SizedBox(width: 16),
            _ClipboardButton(
              label: 'Copy',
              iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/copy-icon.svg',
              onTap: () {},
            ),
            const SizedBox(width: 16),
            _ClipboardButton(
              label: 'Format Painter',
              iconPath: 'lib/widgets/topbar/secondary_menus/home_submenu/home_icons/brush-icon.svg',
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 5), // slightly smaller spacing between buttons and label
        // Clipboard Label
        const Text(
          'Clipboard',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

// Reusable private Clipboard Button Widget
class _ClipboardButton extends StatefulWidget {
  final String label;
  final String iconPath;
  final VoidCallback onTap;

  const _ClipboardButton({
    required this.label,
    required this.iconPath,
    required this.onTap,
  });

  @override
  State<_ClipboardButton> createState() => _ClipboardButtonState();
}

class _ClipboardButtonState extends State<_ClipboardButton> {
  bool _isHovered = false;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;

    if (_isPressed) {
      backgroundColor = Colors.grey[300]!;
    } else if (_isHovered) {
      backgroundColor = Colors.grey[200]!;
    } else {
      backgroundColor = Colors.white;
    }

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTapDown: (_) => setState(() => _isPressed = true),
        onTapUp: (_) => setState(() => _isPressed = false),
        onTapCancel: () => setState(() => _isPressed = false),
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(color: Colors.grey[400]!),
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                widget.iconPath,
                height: 20,
                width: 20,
              ),
              const SizedBox(height: 2),
              Text(
                widget.label,
                style: const TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}