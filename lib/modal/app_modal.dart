// To parse this JSON data, do
//
//     final weatherModal = weatherModalFromJson(jsonString);

import 'dart:convert';

WeatherModal weatherModalFromJson(String str) =>
    WeatherModal.fromJson(json.decode(str));

String weatherModalToJson(WeatherModal data) => json.encode(data.toJson());

class WeatherModal {
  String name;
  double lat;
  double lon;
  String country;
  String state;

  WeatherModal({
    required this.name,
    required this.lat,
    required this.lon,
    required this.country,
    required this.state,
  });

  factory WeatherModal.fromJson(Map<String, dynamic> json) => WeatherModal(
        name: json["name"],
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        country: json["country"],
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "lat": lat,
        "lon": lon,
        "country": country,
        "state": state,
      };
}
