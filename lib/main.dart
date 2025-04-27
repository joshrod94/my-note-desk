import 'package:flutter/material.dart';
import 'dart:io'; // To check if we're on Windows
import 'package:window_size/window_size.dart'; // To control window size

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
    return const Scaffold(
      body: Center(
        child: Text(
          'Placeholder for UI Layout',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
