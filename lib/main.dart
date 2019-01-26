import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nima/nima_actor.dart';
import 'aim_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new NimaActor("assets/Hop.nima", alignment:Alignment.center, fit:BoxFit.contain, animation:"idle");
  }
}