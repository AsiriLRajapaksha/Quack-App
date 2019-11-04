import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../jsonconnection/getQuack.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class QuackHome extends StatefulWidget{
  QuackHome(List body);

  @override
  State<StatefulWidget> createState() {
    return new QuackHomeState();
  }
}

class QuackHomeState extends State<QuackHome>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Quack", style: new TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: new Center(
        child: ListView.builder(itemBuilder: null),
      ),
    );
  }
}
