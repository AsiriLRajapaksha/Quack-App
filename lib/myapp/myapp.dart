import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quackapp/jsonconnection/getQuack.dart';
import '../ui/quack.dart';

class MyApp extends StatelessWidget {
  List features;
  MyApp({
    Key key,
    this.features,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Quack',
        home: QuackHome(
          features: features,
        ));
  }
}
