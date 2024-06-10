import 'package:flutter/material.dart';
class devicePermissionsScreen extends StatefulWidget {
  const devicePermissionsScreen({super.key});

  @override
  State<devicePermissionsScreen> createState() => _devicePermissionsScreenState();
}

class _devicePermissionsScreenState extends State<devicePermissionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  actions: [
    Icon(Icons.phone_android_outlined,),
  ],
  title: Text("Device permissions",style: TextStyle(fontSize: 18),
  ),
  ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
