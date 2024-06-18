import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/material.dart';

import 'age_filter_screen.dart';
import 'ordres_ui_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  List<Map<String, dynamic>> person = [];
  List<Map<String, dynamic>> filterList = [];
  String myGroup = "";
  List<String> ageGroups = ["20-30", "30-60", "60-90"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Center(child: Text("age filter")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Person",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                labelText: "Age",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white38)),
              onPressed: () {
                setState(() {
                  int age = int.tryParse(ageController.text) ?? 0;
                  if (age < 30) {
                    myGroup = "20-30";
                  } else if (age < 60) {
                    myGroup = "30-60";
                  } else {
                    myGroup = "60-90";
                  }
                  person.add({
                    "name": nameController.text,
                    "age": ageController.text,
                    "group": myGroup,
                  });
                  nameController.clear();
                  ageController.clear();
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right:20),
                child: Text("Add",style: TextStyle(color: Colors.pink),),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Filter items Group",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.pink),
            ),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: "Select Age Group",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              ),
              value: null,
              items: ageGroups.map((String ageGroup) {
                return DropdownMenuItem<String>(
                  value: ageGroup,
                  child: Text(ageGroup),
                );
              }).toList(),
              onChanged: (String?selectedGroup) {
                setState(() {
                  if (selectedGroup != null) {
                    filterList = person
                        .where((person) => person["group"] == selectedGroup)
                        .toList();
                  } else {
                    filterList.clear();
                  }
                });
              },
            ),

            //items ka data aa raha h
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(

                itemCount: filterList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.teal,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      title: Text(filterList[index]["name"]),
                      subtitle: Text("Age: ${filterList[index]["age"]}"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

