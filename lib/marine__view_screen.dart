import 'package:flutter/material.dart';
import 'marine_class_screen.dart';
import 'marine_model_screen.dart';

class MarineViewScreen extends StatefulWidget {
  const MarineViewScreen({super.key});

  @override
  State<MarineViewScreen> createState() => _MarineViewScreenState();
}

class _MarineViewScreenState extends State<MarineViewScreen> {
  final TextEditingController _searchController = TextEditingController();

  late Future<MarineModal> _futuresearch;

  @override
  void initState() {
    super.initState();
    _futuresearch = _searchMarine("");
  }

  Future<MarineModal> _searchMarine(String query) async {
    return MarineApiClass().getMarineVeiw(query);
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 50,
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Marine Api"),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 25,right: 25),
            child: TextFormField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  _futuresearch = value.isNotEmpty
                      ? MarineApiClass().getMarineVeiw(value)
                      : Future.value();
                });
              },
              decoration: InputDecoration(
                hintText: "Search..",
                filled: true,
                fillColor: Colors.black12,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(25),
                ),
                prefixIcon: IconButton(
                  onPressed: () {

                  },
                  icon: Icon(Icons.search),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          SizedBox(height: 80,),
          FutureBuilder(future: _futuresearch, builder: (context, snapshot) {
            var viewdata = snapshot.data?.location;
            return Center(
              child: Container(
                height: 250,
                width: 360,
                color: Colors.green,
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text("Name:-${viewdata?.name??""}"),
                      Text("Country:-${viewdata?.country??""}"),
                      Text("LocalTimeEpoch:-${viewdata?.localtimeEpoch??""}"),
                      Text("TzId:-${viewdata?.tzId??""}"),
                      Text("Lat:-${viewdata?.lat??""}"),
                      Text("Lon:-${viewdata?.lon??""}"),
                      Text("LocalTime:-${viewdata?.localtime??""}"),
                    ],
                  ),
                ),
              ),
            );
          },),
        ],
      ),
    );

  }
}
