import 'package:flutter/material.dart';
import 'package:learn_git/search_api_/search_view_api.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchView(),
    );
  }
}
