import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Pages/game/real_game.dart';
import 'Pages/homework8/Thai Font Viewer.dart';

void main() {

  /*var rng = new Random();
  var output = rng.nextInt(100);
  runApp(
    Center(
      child: Text(
        '${output} hello teacher',
        style: TextStyle(color: Colors.red,fontSize : 200),
        textDirection: TextDirection.ltr,
      ),
    ),
  );*/
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RealGamePage(),
    );
  }
}
