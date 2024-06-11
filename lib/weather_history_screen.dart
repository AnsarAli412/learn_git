import 'package:flutter/material.dart';
import 'package:learn_git/weather_history_api_service.dart';

class WeatherHistoryScreen extends StatefulWidget {
  const WeatherHistoryScreen({super.key});

  @override
  State<WeatherHistoryScreen> createState() => _WeatherHistoryScreenState();
}

class _WeatherHistoryScreenState extends State<WeatherHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "City/Country",
          style: TextStyle(color: Colors.white, fontSize: 21),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              size: 29,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: FutureBuilder(
        future: WeatherHistoryApiService().getWeatherHistory(),
        builder: (context, snapshot) {
         var data = snapshot.data?.forecast;
          return Container(
            width: 400,
            color: Colors.cyan,
            child: Column(
              children: [
                  Text("${data?.forecastday}")
              ],
            ),
          );
        },
      ),
    );
  }
}
