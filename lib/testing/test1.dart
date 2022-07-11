import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(),
    );
  }
}

class Page extends StatelessWidget {
  Page({Key? key}) : super(key: key);
  List<Color> colors = [
    Colors.blue,
    Color.fromARGB(255, 33, 243, 44),
    Color.fromARGB(255, 243, 33, 96),
    Color.fromARGB(255, 33, 47, 243)
  ];
//Y

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 250.0,
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(10.0),
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(5.0),
          color: index % 2 == 0 ? Colors.cyan : Colors.deepOrange,
          child: Center(
            child: Text(index.toString()),
          ),
        ),
      ),
    );
  }
}
