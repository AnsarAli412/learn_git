import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_git/profile_logic_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey,
        title: Text('Profile**Ui'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              color: Colors.teal,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Icon(Icons.account_circle, size: 30),
                title: Text('jyoti',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                subtitle: Text('Subtitle  '),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.teal,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Icon(Icons.email, size: 30),
                title: Text('Email ',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                subtitle: Text('jyoti@mail.com'),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.teal,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Icon(Icons.phone, size: 30),
                title: Text('Phone Number',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                subtitle: Text('+11234567890'),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.teal,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Icon(Icons.location_city, size: 30),
                title: Text('Address',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                subtitle: Text('Country'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.pink)),
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));
            }, child: Text("Add data"))
          ],

        ),

      ),

    );
  }
}
