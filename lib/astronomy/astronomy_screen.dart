import 'package:flutter/material.dart';
import 'package:learn_git/astronomy/astronomy_api_service.dart';

class AstronomyScreen extends StatefulWidget {
  const AstronomyScreen({super.key});

  @override
  State<AstronomyScreen> createState() => _AstronomyScreenState();
}

class _AstronomyScreenState extends State<AstronomyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sun"),
      ),
      body: FutureBuilder(
          future: AstronomyApiService().getAstronomyData("Patna"),
          builder: (_, snap) {
            var data = snap.data;
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text("${data?.astronomy?.astro?.sunrise.toString()}"),
                      ),
                      Image.asset(
                        "assets/images/sun_path_image.png",
                        height: 100,
                        // width: 200,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text("${data?.astronomy?.astro?.sunset.toString()}"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text("${data?.astronomy?.astro?.moonrise.toString()}"),
                      ),
                      Image.asset("assets/images/moon_smile_image.png",height: 100,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text("${data?.astronomy?.astro?.sunrise.toString()}"),
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
