// To parse this JSON data, do
//
//     final astronomyModel = astronomyModelFromJson(jsonString);

import 'dart:convert';

AstronomyModel astronomyModelFromJson(String str) => AstronomyModel.fromJson(json.decode(str));

String astronomyModelToJson(AstronomyModel data) => json.encode(data.toJson());

class AstronomyModel {
  Location? location;
  Astronomy? astronomy;

  AstronomyModel({
    this.location,
    this.astronomy,
  });

  factory AstronomyModel.fromJson(Map<String, dynamic> json) => AstronomyModel(
    location: json["location"] == null ? null : Location.fromJson(json["location"]),
    astronomy: json["astronomy"] == null ? null : Astronomy.fromJson(json["astronomy"]),
  );

  Map<String, dynamic> toJson() => {
    "location": location?.toJson(),
    "astronomy": astronomy?.toJson(),
  };
}

class Astronomy {
  Astro? astro;

  Astronomy({
    this.astro,
  });

  factory Astronomy.fromJson(Map<String, dynamic> json) => Astronomy(
    astro: json["astro"] == null ? null : Astro.fromJson(json["astro"]),
  );

  Map<String, dynamic> toJson() => {
    "astro": astro?.toJson(),
  };
}

class Astro {
  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;
  String? moonPhase;
  dynamic moonIllumination;
  dynamic isMoonUp;
  dynamic isSunUp;

  Astro({
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.moonIllumination,
    this.isMoonUp,
    this.isSunUp,
  });

  factory Astro.fromJson(Map<String, dynamic> json) => Astro(
    sunrise: json["sunrise"],
    sunset: json["sunset"],
    moonrise: json["moonrise"],
    moonset: json["moonset"],
    moonPhase: json["moon_phase"],
    moonIllumination: json["moon_illumination"],
    isMoonUp: json["is_moon_up"],
    isSunUp: json["is_sun_up"],
  );

  Map<String, dynamic> toJson() => {
    "sunrise": sunrise,
    "sunset": sunset,
    "moonrise": moonrise,
    "moonset": moonset,
    "moon_phase": moonPhase,
    "moon_illumination": moonIllumination,
    "is_moon_up": isMoonUp,
    "is_sun_up": isSunUp,
  };
}

class Location {
  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  dynamic localtimeEpoch;
  String? localtime;

  Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    name: json["name"],
    region: json["region"],
    country: json["country"],
    lat: json["lat"]?.toDouble(),
    lon: json["lon"]?.toDouble(),
    tzId: json["tz_id"],
    localtimeEpoch: json["localtime_epoch"],
    localtime: json["localtime"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "region": region,
    "country": country,
    "lat": lat,
    "lon": lon,
    "tz_id": tzId,
    "localtime_epoch": localtimeEpoch,
    "localtime": localtime,
  };
}
