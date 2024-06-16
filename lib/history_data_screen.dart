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
  late Future<HistoryModel> _futureSearch;

  @override
  void initState() {
    super.initState();
    _futureSearch = _searchCurrent("", "2024-04-01");
  }

  Future<HistoryModel> _searchCurrent(String query, String futureDate) async {
    return HistoryApiServices().getHistoryData(query, futureDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        backgroundColor: Colors.teal,
        title: const Text(
          "History Data",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextFormField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  _futureSearch = value.isNotEmpty
                      ? _searchCurrent(value, "2024-04-01")
                      : _searchCurrent("", "2024-04-01");
                });
              },
              decoration: InputDecoration(
                hintText: "Search..",
                filled: true,
                fillColor: Colors.black12,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          FutureBuilder<HistoryModel>(
            future: _futureSearch,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              else if (snapshot.hasData) {
                var locationData = snapshot.data!.location;
                var forecastData = snapshot.data!.forecast?.forecastday;

                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name: ${locationData?.name ?? ""}"),
                                Text("Region: ${locationData?.region ?? ""}"),
                                Text("Country: ${locationData?.country ?? ""}"),
                                Text("Lat: ${locationData?.lat ?? ""}"),
                                Text("Lon: ${locationData?.lon ?? ""}"),
                                Text("TzId: ${locationData?.tzId ?? ""}"),
                                Text("LocaltimeEpoch: ${locationData?.localtimeEpoch ?? ""}"),
                                Text("Localtime: ${locationData?.localtime ?? ""}"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button press
                        },
                        child: const Text(
                          "Show History Data",
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                      const SizedBox(height: 20),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: forecastData?.length ?? 0,
                        itemBuilder: (context, index) {
                          var forecastDay = forecastData?[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Date: ${forecastDay?.date ?? ""}"),
                                      Text("Sunrise: ${forecastDay?.astro?.sunrise ?? ""}"),
                                      Text("Sunset: ${forecastDay?.astro?.sunset ?? ""}"),
                                      Text("Moonset: ${forecastDay?.astro?.moonset ?? ""}"),
                                      Text("Moon Phase: ${forecastDay?.astro?.moonPhase ?? ""}"),
                                      Text("Moon Illumination: ${forecastDay?.astro?.moonIllumination ?? ""}"),
                                      Text("Moonrise: ${forecastDay?.astro?.moonrise ?? ""}"),
                                      Text("Date Epoch: ${forecastDay?.dateEpoch ?? ""}"),
                                      Text("Day: ${forecastDay?.day?.condition?.text ?? ""}"),
                                    ],
                                  ),
                                ),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: forecastDay?.hour?.length ?? 0,
                                itemBuilder: (context, hourIndex) {
                                  var hour = forecastDay?.hour?[hourIndex];
                                  return Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Hour: ${hour?.time ?? ""}"),
                                          Text("Temperature: ${hour?.tempC ?? ""} °C"),
                                          Text("Wind Degree: ${hour?.windDegree ?? ""}"),
                                          Text("Windchill: ${hour?.windchillC ?? ""} °C"),
                                          Text("Is Day: ${hour?.isDay ?? ""}"),
                                          Text("Temperature Fahrenheit: ${hour?.tempF ?? ""} °F"),
                                          Text("Heat Index Fahrenheit: ${hour?.heatindexF ?? ""} °F"),
                                          Text("Gust MPH: ${hour?.gustMph ?? ""}"),
                                          Text("Feels like Fahrenheit: ${hour?.feelslikeF ?? ""} °F"),
                                          Text("Precipitation Inches: ${hour?.precipIn ?? ""}"),
                                          Text("Wind MPH: ${hour?.windMph ?? ""}"),
                                          Text("Dew Point Fahrenheit: ${hour?.dewpointF ?? ""} °F"),
                                          Text("Heat Index Celsius: ${hour?.heatindexC ?? ""} °C"),
                                          Text("Wind KPH: ${hour?.windKph ?? ""}"),
                                          Text("Cloud Cover: ${hour?.cloud ?? ""}"),
                                          Text("Gust KPH: ${hour?.gustKph ?? ""}"),
                                          Text("Chance of Rain: ${hour?.chanceOfRain ?? ""}"),
                                          Text("Feels like Celsius: ${hour?.feelslikeC ?? ""} °C"),
                                          Text("UV Index: ${hour?.uv ?? ""}"),
                                          Text("Visibility KM: ${hour?.visKm ?? ""}"),
                                          Text("Snow CM: ${hour?.snowCm ?? ""}"),
                                          Text("Chance of Snow: ${hour?.chanceOfSnow ?? ""}"),
                                          Text("Precipitation MM: ${hour?.precipMm ?? ""}"),
                                          Text("Pressure Inches: ${hour?.pressureIn ?? ""}"),
                                          Text("Condition: ${hour?.condition?.text ?? ""}"),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                );
              } else {
                return Container(); // Return an empty container if no data is available
              }
            },
          ),
        ],
      ),
    );
  }
}
