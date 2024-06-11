// To parse this JSON data, do
//
//     final timeZoneModel = timeZoneModelFromJson(jsonString);

import 'dart:convert';

TimeZoneModel timeZoneModelFromJson(String str) => TimeZoneModel.fromJson(json.decode(str));

String timeZoneModelToJson(TimeZoneModel data) => json.encode(data.toJson());

class TimeZoneModel {
  Location? location;

  TimeZoneModel({
    this.location,
  });

  factory TimeZoneModel.fromJson(Map<String, dynamic> json) => TimeZoneModel(
    location: json["location"] == null ? null : Location.fromJson(json["location"]),
  );

  Map<String, dynamic> toJson() => {
    "location": location?.toJson(),
  };
}

class Location {
  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  int? localtimeEpoch;
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
