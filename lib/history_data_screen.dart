import 'package:flutter/material.dart';

import 'history_api_services.dart';
import 'history_model_screen.dart';

class HistoryDataScreen extends StatefulWidget {
  const HistoryDataScreen({super.key});

  @override
  State<HistoryDataScreen> createState() => _HistoryDataScreenState();
}

class _HistoryDataScreenState extends State<HistoryDataScreen> {
  final TextEditingController _searchController = TextEditingController();
  late Future<HistoryModel> _futuresearch;

  @override
  void initState() {
    super.initState();
    _futuresearch = _searchHistory("");
  }

  Future<HistoryModel> _searchHistory(String query) async {
    if (query.isNotEmpty) {
      return HistoryApiServices().getHistoryData(query);
    } else {
      return HistoryModel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        backgroundColor: Colors.brown,
        title: const Text(
          "History Data",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 10, right: 20),
              child: TextFormField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    _futuresearch = _searchHistory(value);
                  });
                },
                decoration: InputDecoration(
                  hintText: "Search..",
                  filled: true,
                  fillColor: Colors.black12,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(color: Colors.transparent),
                  //   borderRadius: BorderRadius.circular(25),
                  // ),
                  // prefixIcon: IconButton(
                  //   onPressed: () {},
                  //   icon: const Icon(Icons.search),
                  // ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                ),
              ),
            ),
            const SizedBox(height: 30,),

            FutureBuilder(
              future: _futuresearch,
              builder: (context, snapshot) {
                var locationData = snapshot.data?.location;
                var viewData = snapshot.data;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     SizedBox(height: 10,),
                    SizedBox(
                      width: 370,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name:-${locationData?.name ?? ""}"),
                              Text("Region:-${locationData?.region ?? ""}"),
                              Text("Country:-${locationData?.country ?? ""}"),
                              Text("Lat:-${locationData?.lat ?? ""}"),
                              Text("Lon:-${locationData?.lon ?? ""}"),
                              Text("TzId:-${locationData?.tzId ?? ""}"),
                              Text("LocaltimeEpoch:-${locationData?.localtimeEpoch ?? ""}"),
                              Text("Localtime:-${locationData?.localtime ?? ""}"),
                              Text("Localtime:-${viewData?.forecast?.forecastday ?? ""}"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
