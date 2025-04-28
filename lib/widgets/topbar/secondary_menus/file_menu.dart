import 'package:flutter/material.dart';
import 'file_submenu/new.dart';
import 'file_submenu/save.dart';
import 'file_submenu/print.dart';
import 'file_submenu/export.dart';
import 'file_submenu/import.dart';
import 'file_submenu/settings.dart';
import 'file_submenu/close.dart';

class FileMenu extends StatelessWidget {
  const FileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            NewButton(), 
            SizedBox(width: 24),
            SaveButton(),
            SizedBox(width: 24),
            PrintButton(),
            SizedBox(width: 24),
            ExportButton(),
            SizedBox(width: 24),
            ImportButton(),
            SizedBox(width: 24),
            SettingsButton(),
            SizedBox(width: 24),
            FileCloseButton(),
          ],
        ),
      ),
    );
  }
}
