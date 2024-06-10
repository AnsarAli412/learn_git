import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mixin_class.dart';

class InstaHelpScreen extends StatefulWidget {
  const InstaHelpScreen({super.key});

  @override
  State<InstaHelpScreen> createState() => _InstaHelpScreenState();
}

class _InstaHelpScreenState extends State<InstaHelpScreen> with InstaUi {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            InstaUi().listTile(
              // IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                Text("help",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15),)),
            InstaUi().listTile(
                Text("Report a problem"),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded,size: 17,))),
            InstaUi().listTile(
                Text("Account Status"),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded,size: 17))),
            InstaUi().listTile(
                Text("Meta Verified"),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded,size: 17))),
            InstaUi().listTile(
                Text("Help Center"),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded,size: 17))),
            InstaUi().listTile(
                Text("Privacy and Security"),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded,size: 17))),
            InstaUi().listTile(
                Text("Spport Request"),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded,size: 17)))
          ],
        ),
      ),
    );
  }
}
