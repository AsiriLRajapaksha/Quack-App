import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'jsonconnection/getQuack.dart';
import 'ui/quack.dart';

void main () async{
  List _body = await getQuack();
  runApp(new MaterialApp(
    title: 'Quack',
    home: QuackHome(_body),
  ));
}