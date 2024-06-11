import 'package:flutter/material.dart';
import 'package:learn_git/weather_app/time_zone_api_service.dart';
import 'package:learn_git/weather_app/time_zone_model_page.dart';

class SearchTimeZone extends StatefulWidget {
  const SearchTimeZone({super.key});

  @override
  State<SearchTimeZone> createState() => _SearchTimeZoneState();
}

class _SearchTimeZoneState extends State<SearchTimeZone> {
  TextEditingController searchController = TextEditingController();
  var weatherService = WeatherService();
  TimeZoneModel? timeZoneData; // Allow this to be null initially

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    timeZoneData = await weatherService.searchTimeZoneData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Time Zone"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Type City Name",
                  prefixIcon: IconButton(
                    onPressed: () async {
                      timeZoneData = await weatherService
                          .searchTimeZoneData(searchController.text);
                      setState(() {});
                    },
                    icon: const Icon(Icons.search),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: timeZoneData != null
                  ? ListView(
                children: [
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name: ${timeZoneData!.location!.name}',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text('Country: ${timeZoneData!.location!.country}'),
                          Text('Latitude: ${timeZoneData!.location!.lat}'),
                          Text('Longitude: ${timeZoneData!.location!.lon}'),
                          Text('Local Time: ${timeZoneData!.location!.localtime}'),
                          Text('Epoch Time: ${timeZoneData!.location!.localtimeEpoch}'),
                          Text('Time Zone ID: ${timeZoneData!.location!.tzId}'),
                        ],
                      ),
                    ),
                  ),
                ],
              )
                  : const Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
