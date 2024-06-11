import 'package:flutter/material.dart';
class MarineApiScreen extends StatefulWidget {
  const MarineApiScreen({super.key});

  @override
  State<MarineApiScreen> createState() => _MarineApiScreenState();
}

class _MarineApiScreenState extends State<MarineApiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Marine"),
      ),
      body: Card(
        child: (
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ),
      ),
    );
  }
}
