import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quackapp/myapp/myapp.dart';
import 'jsonconnection/getQuack.dart';

void main() async {
  List features;

  Map _data = await getQuack();
  features = _data['features'];

  runApp(new MyApp(features: features,));
}
