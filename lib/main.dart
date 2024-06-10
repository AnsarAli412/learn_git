import 'package:flutter/material.dart';
import 'package:learn_git/ui_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UiDesign_screen(),
    );
  }
}

