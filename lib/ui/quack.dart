import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../jsonconnection/getQuack.dart';

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
        title: new Text("Quack"),
        centerTitle: true,
      ),
      body: new Center(
        child: new ListView.builder(
            itemBuilder: (BuildContext context, int position) {
          return new ListTile(
            title: new Text("${features[position]['properties']['place']}"),
          );
        }),
      ),
    );
  }
}
