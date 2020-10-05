import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColoredBlock(),
                ColoredBlock(),
                ColoredBlock(),
              ],
            ),
            TextCreator.createText("spaceBetween"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ColoredBlock(),
                ColoredBlock(),
                ColoredBlock(),
              ],
            ),
            TextCreator.createText("spaceAround"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColoredBlock(),
                ColoredBlock(),
                ColoredBlock(),
              ],
            ),
            TextCreator.createText("center"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ColoredBlock(),
                ColoredBlock(),
                ColoredBlock(),
              ],
            ),
            TextCreator.createText("end"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColoredBlock(),
                ColoredBlock(),
                ColoredBlock(),
              ],
            ),
            TextCreator.createText("spaceEvenly"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ColoredBlock(),
                ColoredBlock(),
                ColoredBlock(),
              ],
            ),
            TextCreator.createText("start"),
          ],
        ),
      ),
    );
  }
}

class TextCreator {
  static Widget createText(String text){
    return Container(
      child: Center(
        child: Text(
          '$text',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}

class ColoredBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        border: Border.all(color: Colors.black, width: 2),
        //borderRadius: BorderRadius.circular(40.0),
      ),
    );
  }
}
