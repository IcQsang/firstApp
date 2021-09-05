import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/main.dart';
import 'dart:math';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  var num = [1, 2, 3];
  var size = 30;
  var show = true;

  @override
  Widget build(BuildContext context) {
    var r = Random();
    return Scaffold(
      appBar: AppBar(
        title: Text("state"),
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: num.map((e) => Text(
                      e.toString(),
                      style: TextStyle(fontSize: size.toDouble()),
                    )).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: handleClick, child: Text("click me")),
                TextButton(onPressed: handleClick2, child: Text("click me2")),
              ],
            ),
            Image(
              image: AssetImage(
                  show ? "assets/images/p.png" : "assets/images/op.png"),
              width: 100,
            )
          ],
        )),
      ),
    );
  }

  void handleClick() {
    setState(() {
      num.add(num.length + 1);
    });
  }

  void handleClick2() {
    setState(() {
      show = !show;
    });
  }
}
