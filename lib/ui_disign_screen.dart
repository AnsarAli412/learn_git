import 'package:flutter/material.dart';

class UiDisignScreen extends StatefulWidget {
  const UiDisignScreen({super.key});

  @override
  State<UiDisignScreen> createState() => _UiDisignScreenState();
}

class _UiDisignScreenState extends State<UiDisignScreen>{
  bool isPrivate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Account privacy", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Private account", style: TextStyle(fontSize: 16, color: Colors.black)),
                Switch(
                  activeColor: Colors.blue,
                  value: isPrivate,
                  onChanged: (value) {
                    setState(() {
                      isPrivate = value;
                    });
                  },
                ),
              ],
            ),
            // Text("Private account", style: TextStyle(fontSize: 16, color: Colors.black)),
            SizedBox(height: 25),
            Text("When your account is public, your profile and posts can be seen by anyone", style: TextStyle(fontSize: 11, color: Colors.black54)),
            SizedBox(height: 8),
            Text("on or off Instagram, even if they don't have an Instagram account.", style: TextStyle(fontSize: 11, color: Colors.black54)),
            SizedBox(height: 20),
            Text("When your account is public, only the followers you approve can see what", style: TextStyle(fontSize: 11, color: Colors.black54)),
            SizedBox(height: 8),
            Text("you share, including your photos or videos on hashtags and location pages", style: TextStyle(fontSize: 11, color: Colors.black54)),
            SizedBox(height: 8),
            Text("and your followers and following lists. Certain info on your profile, like your", style: TextStyle(fontSize: 11, color: Colors.black54)),
            SizedBox(height: 8),
            Text("profile picture and username, is visible to everyone on and off Instagram", style: TextStyle(fontSize: 11, color: Colors.black54)),
            SizedBox(height: 7),
            Text("Learn more", style: TextStyle(fontSize: 13, color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}