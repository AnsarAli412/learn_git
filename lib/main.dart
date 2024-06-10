import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingAbout(),
    );
  }
}


class SettingAbout extends StatefulWidget {
  const SettingAbout({super.key});

  @override
  State<SettingAbout> createState() => _SettingAboutState();
}

class _SettingAboutState extends State<SettingAbout> with InstaAbout{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("About",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
      //    ListTile(
      //     title: Text("About your account"),
      //      trailing: Icon(Icons.arrow_forward_ios),
      // ),
      //     ListTile(
      //       title: Text("Priva Policy"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     ListTile(
      //       title: Text("Terms of Use"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     ListTile(
      //       title: Text("Open source Libraries"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
      //     ListTile(
      //       title: Text("App Upodate"),
      //       trailing: Icon(Icons.arrow_forward_ios),
      //     ),
          listTile("About your account",IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 17))),
          listTile("Privacy Policy",IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 17))),
          listTile("Terms of Use",IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 17))),
          listTile("Open source Libraries",IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 17))),

        ],
      ),
    );
  }
}
   mixin class InstaAbout{
   listTile(String name, Widget? trailing){
     return ListTile(
       contentPadding: EdgeInsets.only(left: 20),
       title: Text(name),
       trailing: trailing,
     );
   }
   }

