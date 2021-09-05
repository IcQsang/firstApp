import 'dart:math';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    var output = rng.nextInt(100);

    return Scaffold(
        appBar: AppBar(
          title: Text("Guess the number"),
        ),
        body: Container(
            color: Colors.cyanAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 20,
                        height: 20,
                        color: Colors.green,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 20,
                          height: 20,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        color: Colors.pink,
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'one',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 60.0),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red[500],
                        size: 60.0,
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('two',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 40.0)),
                      Icon(
                        Icons.star,
                        color: Colors.red[500],
                        size: 40.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red[500],
                        size: 40.0,
                      ),
                    ]),
                Text('three',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 100.0)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 100.0,
                        color: Colors.lightGreen[500],
                      ),
                      Icon(
                        Icons.star,
                        size: 100.0,
                        color: Colors.lightGreen[500],
                      ),
                      Icon(
                        Icons.star,
                        size: 100.0,
                        color: Colors.lightGreen[500],
                      )
                    ]),
              ],
              /*
    ,


    );
        Align(
          alignment: Alignment.topLeft,
          child: ,

          ),
        ,*/
            )));
  }
}
