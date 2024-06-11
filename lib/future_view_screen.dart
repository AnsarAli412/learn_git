// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
//
// import 'future_modal.dart';
//
// class FutureApiScreen extends StatefulWidget {
//   const FutureApiScreen({super.key});
//
//   @override
//   State<FutureApiScreen> createState() => _FutureApiScreenState();
// }
//
// class _FutureApiScreenState extends State<FutureApiScreen> {
//   final TextEditingController _controller = TextEditingController();
//   List<FutureModal> data = [];
//
//   List<FutureModal> get gata => data;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Future Data"),
//       ),
//       body: FutureBuilder(
//         future: ,
//         builder: (context, snapshot) {
//
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'future_service_screen.dart';

import 'future_modal.dart';

class FutureApiScreen extends StatefulWidget {
  @override
  _FutureApiScreenState createState() => _FutureApiScreenState();
}

class _FutureApiScreenState extends State<FutureApiScreen> {
  TextEditingController _controller = TextEditingController();
  WeatherApiClass weatherService = WeatherApiClass();
  Future<FutureModal>? weatherData;
  var city = '';

  void fetchWeather() {
    setState(() {
      weatherData = weatherService.getFutureData(city);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Enter name',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      city = _controller.text;
                    });
                    fetchWeather();
                  },
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder<FutureModal>(
                future: weatherData,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data?.forecast?.forecastday?.length,
                      itemBuilder: (context, index) {
                       var forcdata = snapshot.data?.forecast?.forecastday?[index];
                        return ListTile(
                          title: Text('${forcdata?.date}'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Max Temp: ${forcdata?.day?.maxtempC ?? ""}'),
                              Text('Min Temp: ${forcdata?.day?.mintempC ?? ""}'),
                              Text('Condition: ${forcdata?.day?.condition?.text ?? ""}'),
                              
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(child: Text('No data'));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
