import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../jsonconnection/getQuack.dart';
import 'dart:convert';
import 'dart:async';

class QuackHome extends StatelessWidget {
  List features;

  QuackHome({
    Key key,
    this.features,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Quack",
          style: new TextStyle(),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: new Center(
        child: new ListView.builder(
            itemCount: features.length,
            itemBuilder: (BuildContext context, int position) {
          if (position.isOdd) return new Divider();

          final index = position ~/ 2 ;

          var date = new DateTime.fromMicrosecondsSinceEpoch( features[index]['properties']['time']*1000, isUtc: false);

          return new ListTile(

            title: new Text("$date",
              style: new TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 15.5,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: new Text("${features[index]['properties']['place']}",
              style: new TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                  fontStyle: FontStyle.italic
              ),
            ),
            leading: new CircleAvatar(
              child: new Text("${features[index]['properties']['mag']}",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 16.5,
                  fontWeight: FontWeight.bold
                )),
              backgroundColor: Colors.green,

            ),
          );
        }),
      ),
    );
  }
}
