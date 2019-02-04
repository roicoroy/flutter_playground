# fluter_playground

A new Flutter project.

## Reference Code


import 'package:flutter/material.dart';
import 'package:nima/nima_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter + Nima'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(title: Text(widget.title)),
        body: Stack(
          children: <Widget>[
            Positioned.fill(
              child: NimaActor(
                "assets/Hop.nima",
                alignment: Alignment.center,
                fit: BoxFit.contain,
                animation: 'move',
                mixSeconds: 0.5,
                completed: (String animationName) {
                  setState(() {
                    // Return to idle.
                    print('pressed');
                  });
                },
              ),
            ),
            Container(
                margin: const EdgeInsets.all(5.0),
                child: FlatButton(
                    child: Text("Start Animaton Demo"),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        print('pressed!');
                        // _animationName = "attack";
                      });
                    })),
          ],
        ));
  }
}




 Routes
 Navigation system

Flow pink = #e9408d   r: 233, g: 64, b: 141
flow background grey = #2f2e2e r:47, r:46, b:46


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Blank Flutter App',
      home: new Text('Home Page'),
    );
  }
}



import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({ Key key }) : super(key: key);

  @override
  _About createState() => _About();
}

class _About extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xFFFFE306));
  }
}