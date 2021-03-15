import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // #docregion build
  @override
  Widget build(BuildContext context) {
    final String data = "data";
    return MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'Fluttertttttttttt',
          ),
        ),
        body: Center(
          child: Container(
            child: Text("Hello world"),
          ),
        ),
      ),
    );
  }
// #enddocregion build
}
