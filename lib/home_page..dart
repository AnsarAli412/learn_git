
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelcted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Weather")),
        leading: Icon(Icons.add_sharp),
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 15,
                child: Container(
                  height: 480,
                  width: 200,
                  color: Colors.white,
                  child: Column(
                      children: [
                        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvkXvteT9TyODUoZEGzlMxOMyF2maCpJy9-Q&usqp=CAU",
                          height: 200,),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          title: Padding(
                            padding: EdgeInsets.only(top:0),
                            child: Text("""Welcome back to....""",style: TextStyle(fontSize: 30),),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Monday,12:30 PM, Mostly Sunny"),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIhhQDdB-m_wB9eceNwDuqEV76HKItZxgyRA&usqp=CAU"),
                          ),
                          title: Text("81 F /26 C"),
                        ),
                        Divider(),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: ChoiceChip(
                                    label: Text("Turn on lights"),selected: isSelcted,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: ChoiceChip(
                                    label: Text("set alarm"),selected: isSelcted,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: ChoiceChip(
                                    label: Text("Turn on lights"),selected: isSelcted,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: ChoiceChip(
                                    label: Text("Turn on lights"),selected: isSelcted,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: ChoiceChip(
                                    label: Text("Turn on lights"),selected: isSelcted,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ]
                  ),
                ),
              ),
            ), ],
        ),
      ),
    );
  }
}



