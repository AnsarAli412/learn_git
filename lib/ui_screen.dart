import 'package:flutter/material.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({super.key});

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  bool isPrivate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 185),
              child: Text(
                "Push notifications",
                style: TextStyle(fontSize: 23),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Text(
                    "Pause all",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                Switch(
                  activeColor: Colors.black,
                  value: isPrivate,
                  onChanged: (value) {
                    setState(() {
                      isPrivate = value;
                    });
                  },
                )
               ,
                // Icon(Icons.notifications)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 170, top: 20),
              child: Text(" Temporarily pause notifications"),
            ),
            Padding(
              padding: EdgeInsets.only(right: 240, top: 20),
              child: Text(
                "Quiet mode ",
                style: TextStyle(fontSize: 23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, top: 20),
              child: Text(
                "Automatically  mute notifications at night or whenever you need to focus ",
                style: TextStyle(fontSize: 11),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Text(
                    "Posts , stories and comments",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Text(
                    "Following and followers",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Text(
                    "Messages",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Text(
                    "Calls",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Text(
                    "Live and reels",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Text(
                    "Fundraisers",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Text(
                    "From Instagram",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Text(
                    "Birthday",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                )
              ],
            ),
            Divider(
              color: Colors.black,
              height: 20,
              thickness: BorderSide.strokeAlignCenter,
            ),
            Padding(
              padding: EdgeInsets.only(right: 135),
              child: Text(
                "Other notifications types",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Text(
                    "Email notifications",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Text(
                    "Shopping",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
