import 'package:flutter/material.dart';
import 'dart:io'; // To check if we're on Windows
import 'package:window_size/window_size.dart'; // To control window size

import 'widgets/topbar/topbar.dart'; // Importing the topbar widget
import 'widgets/sidebar/sidebar.dart'; // Importing the sidebar widget
import 'widgets/editor/editor.dart'; // Importing the editor widget

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows) {
    setWindowMinSize(const Size(1024, 768));
    // Optional: You could setWindowMaxSize(Size.infinite); if you wanted no maximum window size
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Note Desk',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //adding the top bar
          const TopBar(),
          Expanded(
            child: Row(
              children: [
                //adding the sidebar
                const Sidebar(),
                //adding the editor area
                const Expanded(child: EditorArea()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

