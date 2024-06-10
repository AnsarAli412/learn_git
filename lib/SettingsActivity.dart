
import 'package:flutter/material.dart';

class SettingsActivity extends StatefulWidget {
  const SettingsActivity({super.key});

  @override
  State<SettingsActivity> createState() => _SettingsActivityState();
}

class _SettingsActivityState extends State<SettingsActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const Icon(Icons.keyboard_backspace_sharp),
        title: const Text("Settings and activity",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
        ),backgroundColor: Colors.white,),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Card(color: Colors.white70,
              child: TextField(decoration: InputDecoration(hintText: "Search",prefixIcon: const Icon(Icons.search),
                border: InputBorder.none,
          ),),),),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Your account",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(width: 200,),

              Text("Meta",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          
           Column(
            children: [
              
              const ListTile(leading: Icon(Icons.account_circle_outlined),
                title: Text("Accounts Center"),
                subtitle: Text("Password,security,personal details, preferences",
                  style: TextStyle(fontSize: 13),),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const Text("Manage your connected experiences account settings Meta",style: TextStyle(fontSize: 14),),
              const Row(
                children: [
                  Text("    technologies. "),
                  Text("Learn more",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            const SizedBox(height: 19,),
            Container(color: Colors.grey,height: 5,),
              const SizedBox(height: 19,),
              const Padding(
                padding: EdgeInsets.only(right: 227),
                child: Text("How you use Instagram",style: TextStyle(fontWeight: FontWeight.bold),),
              ),

              const ListTile(leading: Icon(Icons.add_card),title: Text("Saved"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.history_rounded),title: Text("Archive"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.panorama_rounded),title: Text("Your activity"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.add_alert_sharp),title: Text("Notifications"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.access_time_filled_rounded),title: Text("Time spent"),trailing: Icon(Icons.arrow_forward_ios_outlined),),

              Container(color: Colors.grey,height: 5,),
              const SizedBox(height: 19,),
              const Padding(
              padding: EdgeInsets.only(right: 227),
              child: Text("Who can see your content",style: TextStyle(fontWeight: FontWeight.bold),),),

              const ListTile(leading: Icon(Icons.lock),title: Text("Account privacy"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.stars_rounded),title: Text("Close Friends"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.block_flipped),title: Text("Blocked"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.hide_source),title: Text("Hide story and live"),trailing: Icon(Icons.arrow_forward_ios_outlined),),

              Container(color: Colors.grey,height: 5,),
              const SizedBox(height: 19,),
              const Padding(
                padding: EdgeInsets.only(right: 227),
                child: Text("How others can interact with you",style: TextStyle(fontWeight: FontWeight.bold),),),

              const ListTile(leading: Icon(Icons.message),title: Text("Messages and story replies"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.mode_comment_outlined),title: Text("Tags and mentions"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.comment),title: Text("Comments"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.share),title: Text("Sharing"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.receipt),title: Text("Restricted"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.label_important),title: Text("Limit interactions"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.high_quality_outlined),title: Text("Hidden Words"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.person),title: Text("Follow and invite friends"),trailing: Icon(Icons.arrow_forward_ios_outlined),),

              Container(color: Colors.grey,height: 5,),
              const SizedBox(height: 19,),
              const Padding(
                padding: EdgeInsets.only(right: 227),
                child: Text("What you see",style: TextStyle(fontWeight: FontWeight.bold),),),

              const ListTile(leading: Icon(Icons.star),title: Text("Favorites"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.add_alert_sharp),title: Text("Muted Accounts"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.subscriptions_sharp),title: Text("Suggested"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.heart_broken),title: Text("Like and share count"),trailing: Icon(Icons.arrow_forward_ios_outlined),),

              Container(color: Colors.grey,height: 5,),
              const SizedBox(height: 19,),
              const Padding(
                padding: EdgeInsets.only(right: 227),
                child: Text("Your app and media",style: TextStyle(fontWeight: FontWeight.bold),),),

              const ListTile(leading: Icon(Icons.perm_device_info),title: Text("Device permissions"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.arrow_downward),title: Text("Archiving and downloading"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.accessibility_new_outlined),title: Text("Accessibility"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.language),title: Text("Language"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.signal_cellular_nodata_outlined),title: Text("Data usage and media quality"),trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.web_outlined),title: Text("Website Permissions"),trailing: Icon(Icons.arrow_forward_ios_outlined),),

              Container(color: Colors.grey,height: 5,),
              const SizedBox(height: 19,),
              const Padding(
                padding: EdgeInsets.only(right: 227),
                child: Text("For families",style: TextStyle(fontWeight: FontWeight.bold),),),

              const ListTile(leading: Icon(Icons.supervisor_account),title: Text("Messages and story replies"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),),

              Container(color: Colors.grey,height: 5,),
              const SizedBox(height: 19,),
              const Padding(
                padding: EdgeInsets.only(right: 227),
                child: Text("For professionala",style: TextStyle(fontWeight: FontWeight.bold),),),

              const ListTile(leading: Icon(Icons.account_balance_sharp),title: Text("Messages and story replies"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.verified_outlined),title: Text("Messages and story replies"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),),

              Container(color: Colors.grey,height: 5,),
              const SizedBox(height: 19,),
              const Padding(
                padding: EdgeInsets.only(right: 227),
                child: Text("Your orders and fundraisers",style: TextStyle(fontWeight: FontWeight.bold),),),

              const ListTile(leading: Icon(Icons.outbox_rounded),title: Text("Messages and story replies"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),),


              Container(color: Colors.grey,height: 5,),
              const SizedBox(height: 19,),
              const Padding(
                padding: EdgeInsets.only(right: 227),
                child: Text("More info and support",style: TextStyle(fontWeight: FontWeight.bold),),),

              const ListTile(leading: Icon(Icons.help),title: Text("Help"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.person),title: Text("Account Status"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),),
              const ListTile(leading: Icon(Icons.add_box_rounded),title: Text("About"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),),

              Container(color: Colors.grey,height: 5,),
              const SizedBox(height: 19,),
              const Padding(
                padding: EdgeInsets.only(right: 227),
                child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),),
              const ListTile(leading: Icon(Icons.help),title: Text("Add account"),),

              const ListTile(leading: Icon(Icons.person),title: Text("Log out"),),

              const ListTile(leading: Icon(Icons.add_box_rounded),title: Text("Log out all accounts"),),

            ],
          )
          
        ],
      ),


    );
  }
}
