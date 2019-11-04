import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

Future<Map> getQuack() async {
  String apiUrl =
      "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson";
  http.Response response = await http.get(apiUrl);
  return json.decode(response.body);
}
