import 'package:flutter/material.dart';

class Lab2Part1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlockCreator.createBlock(50.0, Colors.redAccent),
                BlockCreator.createBlock(50.0, Colors.redAccent),
                BlockCreator.createBlock(50.0, Colors.redAccent),
              ],
            ),
            TextCreator.createText("center"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BlockCreator.createBlock(50.0, Colors.redAccent),
                BlockCreator.createBlock(50.0, Colors.redAccent),
                BlockCreator.createBlock(50.0, Colors.redAccent),
              ],
            ),
            TextCreator.createText("start"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BlockCreator.createBlock(50.0, Colors.redAccent),
                BlockCreator.createBlock(50.0, Colors.redAccent),
                BlockCreator.createBlock(50.0, Colors.redAccent),
              ],
            ),
            TextCreator.createText("end"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlockCreator.createBlock(50.0, Colors.redAccent),
                BlockCreator.createBlock(50.0, Colors.redAccent),
                BlockCreator.createBlock(50.0, Colors.redAccent),
              ],
            ),
            TextCreator.createText("spaceBetween"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BlockCreator.createBlock(50.0, Colors.redAccent),
                BlockCreator.createBlock(50.0, Colors.redAccent),
                BlockCreator.createBlock(50.0, Colors.redAccent),
              ],
            ),
            TextCreator.createText("spaceAround"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BlockCreator.createBlock(50.0, Colors.redAccent),
                BlockCreator.createBlock(50.0, Colors.redAccent),
                BlockCreator.createBlock(50.0, Colors.redAccent),
              ],
            ),
            TextCreator.createText("spaceEvenly"),
            TextCreator.createText("-"),
            TextCreator.createText("-"),
            TextCreator.createText("-"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlockCreator.createBlock(50.0, Colors.amber),
                BlockCreator.createBlock(80.0, Colors.amber),
                BlockCreator.createBlock(50.0, Colors.amber),
              ],
            ),
            TextCreator.createText("center"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlockCreator.createBlock(50.0, Colors.amber),
                BlockCreator.createBlock(80.0, Colors.amber),
                BlockCreator.createBlock(50.0, Colors.amber),
              ],
            ),
            TextCreator.createText("start"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BlockCreator.createBlock(50.0, Colors.amber),
                BlockCreator.createBlock(80.0, Colors.amber),
                BlockCreator.createBlock(50.0, Colors.amber),
              ],
            ),
            TextCreator.createText("end"),
            TextCreator.createText("-"),
            TextCreator.createText("-"),
            TextCreator.createText("-"),
            TextCreator.createText("-"),
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child:
                  BlockCreator2.createBlock(80.0, Colors.amber),
                ),
                Flexible(
                  flex: 2,
                  child:
                  BlockCreator2.createBlock(80.0, Colors.redAccent),
                ),
                Flexible(
                  flex: 1,
                  child:
                  BlockCreator2.createBlock(80.0, Colors.cyanAccent),
                ),
              ],
            )
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

class BlockCreator{
  static Widget createBlock(double size, Color color){
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 2),
      ),
    );
  }
}

class BlockCreator2{
  static Widget createBlock(double height, Color color){
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 2),
      ),
    );
  }
}