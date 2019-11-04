import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'jsonconnection/getQuack.dart';
//import 'ui/quack.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() async{
  List features;
  Map _data = await getQuack();
  features = _data['features'];

  runApp(new MaterialApp(
    title: 'Quack',
    home: QuackHome(features: features,)


//    new Scaffold(
//      appBar: new AppBar(
//        title: new Text("Quack"),
//        centerTitle: true,
//      ),
//      body: new Center(
//        child: new ListView.builder(itemBuilder: (BuildContext context , int position){
//          return new ListTile(title: new Text("${features[position]['properties']['place']}"),);
//        }),
//      ),
//    ),
  ));
}

class QuackHome extends StatelessWidget{
  List features;
  QuackHome({Key key, this.features, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Quack"),
        centerTitle: true,
      ),
      body: new Center(
        child: new ListView.builder(itemBuilder: (BuildContext context , int position){
          return new ListTile(title: new Text("${features[position]['properties']['place']}"),);
        }),
      ),
    );
  }
  
}

Future<Map> getQuack() async{
  String apiUrl = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson";
  http.Response response = await http.get(apiUrl);
  return json.decode(response.body);
}