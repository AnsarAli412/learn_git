import 'package:flutter/material.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({super.key});

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Card(
            child: Row(
              children: [
                  Icon(Icons.notifications),
                   Text("Notifications"),
                   Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
      ),
    );
  }
}
