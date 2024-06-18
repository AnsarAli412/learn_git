// To parse this JSON data, do
//
//     final astronomyModel = astronomyModelFromJson(jsonString);

import 'dart:convert';

AstronomyModel astronomyModelFromJson(String str) => AstronomyModel.fromJson(json.decode(str));

String astronomyModelToJson(AstronomyModel data) => json.encode(data.toJson());

class AstronomyModel {
  AstronomyLocationData? location;
  AstronomyData? astronomy;

  AstronomyModel({
    this.location,
    this.astronomy,
  });

  factory AstronomyModel.fromJson(Map<String, dynamic> json) => AstronomyModel(
    location: json["location"] == null ? null : AstronomyLocationData.fromJson(json["location"]),
    astronomy: json["astronomy"] == null ? null : AstronomyData.fromJson(json["astronomy"]),
  );

  Map<String, dynamic> toJson() => {
    "location": location?.toJson(),
    "astronomy": astronomy?.toJson(),
  };
}

class AstronomyData {
  AstroData? astro;

  AstronomyData({
    this.astro,
  });

  factory AstronomyData.fromJson(Map<String, dynamic> json) => AstronomyData(
    astro: json["astro"] == null ? null : AstroData.fromJson(json["astro"]),
  );

  Map<String, dynamic> toJson() => {
    "astro": astro?.toJson(),
  };
}

class AstroData {
  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;
  String? moonPhase;
  int? moonIllumination;
  int? isMoonUp;
  int? isSunUp;

  AstroData({
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.moonIllumination,
    this.isMoonUp,
    this.isSunUp,
  });

  factory AstroData.fromJson(Map<String, dynamic> json) => AstroData(
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

class AstronomyLocationData {
  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  int? localtimeEpoch;
  String? localtime;

  AstronomyLocationData({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  factory AstronomyLocationData.fromJson(Map<String, dynamic> json) => AstronomyLocationData(
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
