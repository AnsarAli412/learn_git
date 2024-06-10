import 'package:flutter/material.dart';
class AccessibilityScreen extends StatefulWidget {
  const AccessibilityScreen({super.key});

  @override
  State<AccessibilityScreen> createState() => _AccessibilityScreenState();
}

class _AccessibilityScreenState extends State<AccessibilityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accessibility",style: TextStyle(color:Colors.black,fontSize: 20),),

        leading: Icon(Icons.arrow_back,
        ),

      ),
      body: Column(
        children: [
          Text("Capitions",style: ,),
          SizedBox(height: 20,),
          Text("Dark mode"),
        ],
      ),
    );
  }
}
