import 'package:flutter/material.dart';

import 'custumer_ui.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShowPingView(),
    );
  }
}
