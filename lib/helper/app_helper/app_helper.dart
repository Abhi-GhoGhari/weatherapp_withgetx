import 'dart:convert';

import 'package:weatherapp_withgetx/modal/app_citymodal.dart';
import 'package:http/http.dart' as http;
import '../../modal/app_modal.dart';

class WeatherHelper {
  WeatherHelper._();
  static final WeatherHelper _instance = WeatherHelper._();

  String ApiLink1 =
      "https://api.openweathermap.org/geo/1.0/direct?q=surat&limit=5&appid=e75e7161eea06839fed1ddb5372b3fdf";
  String ApiLink2 =
      "https://api.openweathermap.org/data/2.5/weather?lat=37.1289771&lon=-84.0832646&appid=e75e7161eea06839fed1ddb5372b3fdf";

  Future<List<WeatherModal>> getaApi() async {
    List<WeatherModal> weather = [];
    http.Response response = await http.get(
      Uri.parse("ApiLink1"),
    );
    if (response.statusCode == 200) {
      List Data = jsonDecode(response.body);
      Data.map(
        (e) => WeatherModal.fromJson(e),
      ).toList();
    }
    return weather;
  }

  Future<List<WeathercityModal>> getApi2() async {
    List<WeathercityModal> weathercity = [];
    http.Response response = await http.get(
      Uri.parse("ApiLink2"),
    );
    return weathercity;
  }
}
