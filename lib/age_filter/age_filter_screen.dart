import 'package:flutter/material.dart';

class AgeFilterScreen extends StatefulWidget {
  AgeFilterScreen({super.key});

  @override
  State<AgeFilterScreen> createState() => _AgeFilterScreenState();
}

class _AgeFilterScreenState extends State<AgeFilterScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController ageController = TextEditingController();

  var persons = [];
  var filterPersons = [];

  var ageGroup = ["10-30", "30-60", "60-90"];
  var myGroup = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age Filter"),
      ),
      body: Column(
        children: [
          myTextField(nameController),
          myTextField(ageController),
          ElevatedButton(
              onPressed: () {
                var age = int.parse(ageController.text);
                if(age <30){
                  myGroup = "10-30";
                }else if(age<60){
                  myGroup = "30-60";
                }else{
                  myGroup = "60-90";
                }
                setState(() {});
                persons.add({
                  "name": nameController.text,
                  "age": int.parse(ageController.text),
                  "group":myGroup
                });

                print(persons);
              },
              child: const Text("Add")),
          SizedBox(
            height: 60,
            child: DropdownButtonFormField(
                decoration: InputDecoration(hintText: "Select age group"),
                items: ageGroup
                    .map((age) => DropdownMenuItem(
                          child: Text(age),
                          value: age,
                        ))
                    .toList(),
                onChanged: (text) {
                  if (text == ageGroup[0]) {
                    filterPersons = persons
                        .where((age) => age["group"] == ageGroup[0])
                        .toList();
                  } else if (text == ageGroup[1]) {
                    filterPersons = persons
                        .where((age) => age["group"] == ageGroup[1])
                        .toList();
                  } else {
                    filterPersons = persons
                        .where((age) => age["group"] == ageGroup.last)
                        .toList();
                  }
                  setState(() {});
                }),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: filterPersons.length,
                  itemBuilder: (_, index) {
                    return Text(
                        "Name: ${filterPersons[index]['name']}, Age: ${filterPersons[index]['age']}");
                  }))
        ],
      ),
    );
  }

  myTextField(TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
      ),
    );
  }
}
