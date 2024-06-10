import 'package:flutter/material.dart';

class ViewSettingData extends StatefulWidget {
  const ViewSettingData({super.key});

  @override
  State<ViewSettingData> createState() => _ViewSettingDataState();
}

class _ViewSettingDataState extends State<ViewSettingData> {
  String? selectedFriend;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button press
            },
          ),
          title: Text(
            "Close friends",
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal:8, vertical: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "    We don't send notifications when you edit\n"
                        "    your close friend list. Here's how it works:",
                    style: TextStyle(fontSize: 16,color: Colors.black38),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        width: 260,
                        child: Card(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search_rounded),
                              hintText: 'Search',
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(width:10),
                      Text(
                        "Cancel",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize:15),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Expanded(child:ListView(

                      children: [
                        Column(
                            children: [

                              Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5),
                                      ListTile(
                                        contentPadding: EdgeInsets.all(20),
                                        leading:CircleAvatar(
                                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeaKuLjeD70dMOyFHCnvnGHc0-Sad40pduuw&s"),
                                          radius: 30,
                                        ),

                                        title: Text("aparna"),
                                        subtitle: Text("pandey"),
                                        trailing:Padding(
                                          padding: EdgeInsets.only(left: 20),
                                        child:  Radio<String>(
                                          value: 'aparna', // You can use a unique identifier as the value
                                          groupValue: selectedFriend,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFriend = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ),
                                      ListTile(
                                        leading:CircleAvatar(
                                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPbUJMel09tRUYZWPlAMIsH63ikO1XZwqLzGHz6dusqmDfQM2c9_tmT8BWVpWFjIdaL68&usqp=CAU"),
                                          radius: 30,
                                        ),
                                        title: Text("Karishma"),
                                        subtitle: Text("patel"),
                                        trailing: Radio<String>(
                                          value: 'Karishma', // You can use a unique identifier as the value
                                          groupValue: selectedFriend,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFriend = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        leading:CircleAvatar(
                                          backgroundImage: NetworkImage("https://i.pinimg.com/736x/68/c5/0a/68c50ac30605fdb8ce0836aaeaacd48c.jpg"),
                                          radius: 30,
                                        ),
                                        title: Text("pooja"),
                                        subtitle: Text("pandey"),
                                        trailing: Radio<String>(
                                          value: 'Pooja', // You can use a unique identifier as the value
                                          groupValue: selectedFriend,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFriend = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        leading:CircleAvatar(
                                          backgroundImage: NetworkImage("https://www.imagella.com/cdn/shop/products/3f65e111ddb5f7771c328423cd160b83.jpg?v=1707664853&width=300"),
                                          radius: 30,
                                        ),
                                        title: Text("kajal"),
                                        subtitle: Text("gupta"),
                                        trailing: Radio<String>(
                                          value: 'Kajal', // You can use a unique identifier as the value
                                          groupValue: selectedFriend,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFriend = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        leading:CircleAvatar(
                                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeaKuLjeD70dMOyFHCnvnGHc0-Sad40pduuw&s"),
                                          radius: 30,
                                        ),
                                        title: Text("Ansar"),
                                        subtitle: Text("ali"),
                                        trailing: Radio<String>(
                                          value: 'Ansar', // You can use a unique identifier as the value
                                          groupValue: selectedFriend,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFriend = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        leading:CircleAvatar(
                                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUzE2ymQ2iywwTmWsE0V-iySDEv3Lw_2D6Lg&s"),

                                          radius: 30,
                                        ),
                                        title: Text("nandu"),
                                        subtitle: Text("pandey"),
                                        trailing: Radio<String>(
                                          value: 'nandu', // You can use a unique identifier as the value
                                          groupValue: selectedFriend,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFriend = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        leading:CircleAvatar(
                                          backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/C9CAt9tZr8SSi4zKCxhQc9v4I6AOTqRmnLchsu1wVDQL0gsQ3fmbCVgQmOVM1zPru8UH"),
                                          radius: 30,
                                        ),
                                        title: Text("Nitesh Raj Patel"),
                                        subtitle: Text("raj"),
                                        trailing: Radio<String>(
                                          value: 'Nitesh Raj Patel', // You can use a unique identifier as the value
                                          groupValue: selectedFriend,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFriend = value;
                                            });
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        leading: CircleAvatar(
                                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeaKuLjeD70dMOyFHCnvnGHc0-Sad40pduuw&s"),
                                          radius: 30,
                                        ),
                                        title: Text("Rahul"),
                                        subtitle: Text("raj"),
                                        trailing: Radio<String>(
                                          value: 'Rahul', // You can use a unique identifier as the value
                                          groupValue: selectedFriend,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedFriend = value;
                                            });
                                          },
                                        ),
                                      ),

                                      ListTile(
                                        contentPadding: EdgeInsets.all(20),
                                        leading:CircleAvatar(
                                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPbUJMel09tRUYZWPlAMIsH63ikO1XZwqLzGHz6dusqmDfQM2c9_tmT8BWVpWFjIdaL68&usqp=CAU"),
                                          radius: 30,
                                        ),

                                        title: Text("aparna"),
                                        subtitle: Text("pandey"),
                                        trailing:Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child:  Radio<String>(
                                            value: 'aparna', // You can use a unique identifier as the value
                                            groupValue: selectedFriend,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedFriend = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),


                                    ],
                                  )

                              ),

                            ]
                        )
                      ]
                  )
                  )
                ]
            )
        )
    );;
  }
}
