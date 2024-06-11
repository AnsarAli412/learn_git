import 'dart:convert';

MarineModal marineModalFromJson(String str) => MarineModal.fromJson(json.decode(str));

String marineModalToJson(MarineModal data) => json.encode(data.toJson());

class MarineModal {
  Location? location;
  Forecast? forecast;

  MarineModal({
    this.location,
    this.forecast,
  });

  factory MarineModal.fromJson(Map<String, dynamic> json) => MarineModal(
    location: json["location"] == null ? null : Location.fromJson(json["location"]),
    forecast: json["forecast"] == null ? null : Forecast.fromJson(json["forecast"]),
  );

  Map<String, dynamic> toJson() => {
    "location": location?.toJson(),
    "forecast": forecast?.toJson(),
  };
}

class Forecast {
  List<Forecastday>? forecastday;

  Forecast({
    this.forecastday,
  });

  factory Forecast.fromJson(Map<String, dynamic> json) => Forecast(
    forecastday: json["forecastday"] == null ? [] : List<Forecastday>.from(json["forecastday"]!.map((x) => Forecastday.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "forecastday": forecastday == null ? [] : List<dynamic>.from(forecastday!.map((x) => x.toJson())),
  };
}

class Forecastday {
  DateTime? date;
  int? dateEpoch;
  Day? day;
  Astro? astro;
  List<Hour>? hour;

  Forecastday({
    this.date,
    this.dateEpoch,
    this.day,
    this.astro,
    this.hour,
  });

  factory Forecastday.fromJson(Map<String, dynamic> json) => Forecastday(
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
    dateEpoch: json["date_epoch"],
    day: json["day"] == null ? null : Day.fromJson(json["day"]),
    astro: json["astro"] == null ? null : Astro.fromJson(json["astro"]),
    hour: json["hour"] == null ? [] : List<Hour>.from(json["hour"]!.map((x) => Hour.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "date": "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
    "date_epoch": dateEpoch,
    "day": day?.toJson(),
    "astro": astro?.toJson(),
    "hour": hour == null ? [] : List<dynamic>.from(hour!.map((x) => x.toJson())),
  };
}

class Astro {
  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;
  String? moonPhase;
  dynamic? moonIllumination;
  dynamic? isMoonUp;
  dynamic? isSunUp;

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

class Day {
  dynamic? maxtempC;
  dynamic? maxtempF;
  dynamic? mintempC;
  dynamic? mintempF;
  dynamic? avgtempC;
  dynamic? avgtempF;
  dynamic? maxwindMph;
  dynamic? maxwindKph;
  dynamic? totalprecipMm;
  dynamic? totalprecipIn;
  dynamic? totalsnowCm;
  dynamic? avgvisKm;
  dynamic? avgvisMiles;
  dynamic? avghumidity;
  List<DayTide>? tides;
  Condition? condition;
  dynamic? uv;

  Day({
    this.maxtempC,
    this.maxtempF,
    this.mintempC,
    this.mintempF,
    this.avgtempC,
    this.avgtempF,
    this.maxwindMph,
    this.maxwindKph,
    this.totalprecipMm,
    this.totalprecipIn,
    this.totalsnowCm,
    this.avgvisKm,
    this.avgvisMiles,
    this.avghumidity,
    this.tides,
    this.condition,
    this.uv,
  });

  factory Day.fromJson(Map<String, dynamic> json) => Day(
    maxtempC: json["maxtemp_c"]?.toDouble(),
    maxtempF: json["maxtemp_f"],
    mintempC: json["mintemp_c"]?.toDouble(),
    mintempF: json["mintemp_f"]?.toDouble(),
    avgtempC: json["avgtemp_c"]?.toDouble(),
    avgtempF: json["avgtemp_f"]?.toDouble(),
    maxwindMph: json["maxwind_mph"]?.toDouble(),
    maxwindKph: json["maxwind_kph"]?.toDouble(),
    totalprecipMm: json["totalprecip_mm"]?.toDouble(),
    totalprecipIn: json["totalprecip_in"],
    totalsnowCm: json["totalsnow_cm"],
    avgvisKm: json["avgvis_km"]?.toDouble(),
    avgvisMiles: json["avgvis_miles"],
    avghumidity: json["avghumidity"],
    tides: json["tides"] == null ? [] : List<DayTide>.from(json["tides"]!.map((x) => DayTide.fromJson(x))),
    condition: json["condition"] == null ? null : Condition.fromJson(json["condition"]),
    uv: json["uv"],
  );

  Map<String, dynamic> toJson() => {
    "maxtemp_c": maxtempC,
    "maxtemp_f": maxtempF,
    "mintemp_c": mintempC,
    "mintemp_f": mintempF,
    "avgtemp_c": avgtempC,
    "avgtemp_f": avgtempF,
    "maxwind_mph": maxwindMph,
    "maxwind_kph": maxwindKph,
    "totalprecip_mm": totalprecipMm,
    "totalprecip_in": totalprecipIn,
    "totalsnow_cm": totalsnowCm,
    "avgvis_km": avgvisKm,
    "avgvis_miles": avgvisMiles,
    "avghumidity": avghumidity,
    "tides": tides == null ? [] : List<dynamic>.from(tides!.map((x) => x.toJson())),
    "condition": condition?.toJson(),
    "uv": uv,
  };
}

class Condition {
  Texts? text;
  String? icon;
  dynamic? code;

  Condition({
    this.text,
    this.icon,
    this.code,
  });

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
    text: textValues.map[json["text"]]!,
    icon: json["icon"],
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "text": textValues.reverse[text],
    "icon": icon,
    "code": code,
  };
}

enum Texts {
  CLOUDY,
  PARTLY_CLOUDY,
  THUNDERY_OUTBREAKS_IN_NEARBY
}

final textValues = EnumValues({
  "Cloudy ": Texts.CLOUDY,
  "Partly Cloudy ": Texts.PARTLY_CLOUDY,
  "Thundery outbreaks in nearby": Texts.THUNDERY_OUTBREAKS_IN_NEARBY
});

class DayTide {
  List<TideTide>? tide;

  DayTide({
    this.tide,
  });

  factory DayTide.fromJson(Map<String, dynamic> json) => DayTide(
    tide: json["tide"] == null ? [] : List<TideTide>.from(json["tide"]!.map((x) => TideTide.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "tide": tide == null ? [] : List<dynamic>.from(tide!.map((x) => x.toJson())),
  };
}

class TideTide {
  String? tideTime;
  String? tideHeightMt;
  String? tideType;

  TideTide({
    this.tideTime,
    this.tideHeightMt,
    this.tideType,
  });

  factory TideTide.fromJson(Map<String, dynamic> json) => TideTide(
    tideTime: json["tide_time"],
    tideHeightMt: json["tide_height_mt"],
    tideType: json["tide_type"],
  );

  Map<String, dynamic> toJson() => {
    "tide_time": tideTime,
    "tide_height_mt": tideHeightMt,
    "tide_type": tideType,
  };
}

class Hour {
  dynamic? timeEpoch;
  String? time;
  dynamic? tempC;
  dynamic? tempF;
  dynamic? isDay;
  Condition? condition;
  dynamic? windMph;
  dynamic? windKph;
  dynamic? windDegree;
  SwellDir16Point? windDir;
  dynamic? pressureMb;
  dynamic? pressureIn;
  dynamic? precipMm;
  dynamic? precipIn;
  dynamic? humidity;
  dynamic? cloud;
  dynamic? feelslikeC;
  dynamic? feelslikeF;
  dynamic? windchillC;
  dynamic? windchillF;
  dynamic? heatindexC;
  dynamic? heatindexF;
  dynamic? dewpointC;
  dynamic? dewpointF;
  dynamic? visKm;
  dynamic? visMiles;
  dynamic? gustMph;
  dynamic? gustKph;
  dynamic? uv;
  dynamic? sigHtMt;
  dynamic? swellHtMt;
  dynamic? swellHtFt;
  dynamic? swellDir;
  SwellDir16Point? swellDir16Point;
  dynamic? swellPeriodSecs;
  dynamic? waterTempC;
  dynamic? waterTempF;

  Hour({
    this.timeEpoch,
    this.time,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.visKm,
    this.visMiles,
    this.gustMph,
    this.gustKph,
    this.uv,
    this.sigHtMt,
    this.swellHtMt,
    this.swellHtFt,
    this.swellDir,
    this.swellDir16Point,
    this.swellPeriodSecs,
    this.waterTempC,
    this.waterTempF,
  });

  factory Hour.fromJson(Map<String, dynamic> json) => Hour(
    timeEpoch: json["time_epoch"],
    time: json["time"],
    tempC: json["temp_c"]?.toDouble(),
    tempF: json["temp_f"]?.toDouble(),
    isDay: json["is_day"],
    condition: json["condition"] == null ? null : Condition.fromJson(json["condition"]),
    windMph: json["wind_mph"]?.toDouble(),
    windKph: json["wind_kph"]?.toDouble(),
    windDegree: json["wind_degree"],
    windDir: swellDir16PointValues.map[json["wind_dir"]]!,
    pressureMb: json["pressure_mb"],
    pressureIn: json["pressure_in"]?.toDouble(),
    precipMm: json["precip_mm"],
    precipIn: json["precip_in"],
    humidity: json["humidity"],
    cloud: json["cloud"],
    feelslikeC: json["feelslike_c"]?.toDouble(),
    feelslikeF: json["feelslike_f"]?.toDouble(),
    windchillC: json["windchill_c"]?.toDouble(),
    windchillF: json["windchill_f"]?.toDouble(),
    heatindexC: json["heatindex_c"]?.toDouble(),
    heatindexF: json["heatindex_f"]?.toDouble(),
    dewpointC: json["dewpoint_c"]?.toDouble(),
    dewpointF: json["dewpoint_f"]?.toDouble(),
    visKm: json["vis_km"],
    visMiles: json["vis_miles"],
    gustMph: json["gust_mph"]?.toDouble(),
    gustKph: json["gust_kph"]?.toDouble(),
    uv: json["uv"],
    sigHtMt: json["sig_ht_mt"]?.toDouble(),
    swellHtMt: json["swell_ht_mt"]?.toDouble(),
    swellHtFt: json["swell_ht_ft"]?.toDouble(),
    swellDir: json["swell_dir"],
    swellDir16Point: swellDir16PointValues.map[json["swell_dir_16_point"]]!,
    swellPeriodSecs: json["swell_period_secs"]?.toDouble(),
    waterTempC: json["water_temp_c"]?.toDouble(),
    waterTempF: json["water_temp_f"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "time_epoch": timeEpoch,
    "time": time,
    "temp_c": tempC,
    "temp_f": tempF,
    "is_day": isDay,
    "condition": condition?.toJson(),
    "wind_mph": windMph,
    "wind_kph": windKph,
    "wind_degree": windDegree,
    "wind_dir": swellDir16PointValues.reverse[windDir],
    "pressure_mb": pressureMb,
    "pressure_in": pressureIn,
    "precip_mm": precipMm,
    "precip_in": precipIn,
    "humidity": humidity,
    "cloud": cloud,
    "feelslike_c": feelslikeC,
    "feelslike_f": feelslikeF,
    "windchill_c": windchillC,
    "windchill_f": windchillF,
    "heatindex_c": heatindexC,
    "heatindex_f": heatindexF,
    "dewpoint_c": dewpointC,
    "dewpoint_f": dewpointF,
    "vis_km": visKm,
    "vis_miles": visMiles,
    "gust_mph": gustMph,
    "gust_kph": gustKph,
    "uv": uv,
    "sig_ht_mt": sigHtMt,
    "swell_ht_mt": swellHtMt,
    "swell_ht_ft": swellHtFt,
    "swell_dir": swellDir,
    "swell_dir_16_point": swellDir16PointValues.reverse[swellDir16Point],
    "swell_period_secs": swellPeriodSecs,
    "water_temp_c": waterTempC,
    "water_temp_f": waterTempF,
  };
}

enum SwellDir16Point {
  S,
  SSW,
  SW
}

final swellDir16PointValues = EnumValues({
  "S": SwellDir16Point.S,
  "SSW": SwellDir16Point.SSW,
  "SW": SwellDir16Point.SW
});

class Location {
  String? name;
  String? region;
  String? country;
  dynamic? lat;
  dynamic? lon;
  String? tzId;
  dynamic? localtimeEpoch;
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

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}