import 'package:flutter/material.dart';
import 'package:learn_git/weather_api_services.dart';
import 'package:learn_git/weather_astronomy_model.dart';

class WeatherSearchScreen extends StatefulWidget {
  const WeatherSearchScreen({super.key});

  @override
  State<WeatherSearchScreen> createState() => _WeatherSearchScreenState();
}

class _WeatherSearchScreenState extends State<WeatherSearchScreen> {
  TextEditingController searchController = TextEditingController();
   Future<AstronomyModel>? astronomyData;

  Future<AstronomyModel> showData(String name) async {
    return await AstronomyApi().getData(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Astronomy Search',
              style: TextStyle(color: Colors.white),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search for Astronomy...',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13)),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () async {
                      astronomyData = AstronomyApi()
                          .getData(searchController.text.toString());
                      setState(() {});
                    },
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: FutureBuilder(
          future: astronomyData,
          builder: (context, snapshot) {
            var data = snapshot.data;
            return Center(
              child: Column(
                children: [
                  Text("${data?.location?.name ?? ""}"),
                  Text("${data?.astronomy?.astro?.sunset ?? ""} "),
                  Text("${data?.astronomy?.astro?.moonrise ?? ""}"),
                  Text("${data?.astronomy?.astro?.moonset?? ""}"),
                  Text("${data?.astronomy?.astro?.moonPhase ?? ""}"),
                  Text("${data?.astronomy?.astro?.moonIllumination ?? ""}"),
                  Text("${data?.astronomy?.astro?.isMoonUp ?? ""}"),
                  Text("${data?.astronomy?.astro?.isSunUp ?? ""}"),
                ],
              ),
            );
          },
        ));
  }
}
