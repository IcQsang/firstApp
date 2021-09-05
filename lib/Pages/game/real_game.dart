import 'package:flutter/material.dart';

class RealGamePage extends StatefulWidget {
  const RealGamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<RealGamePage> {
  @override
  Widget build(BuildContext context) {
    var ans = TextField();
    var pic = Image(
      image: AssetImage("assets/images/123.png"),
      width: 100,
    );
    var indicate = Text("มากกว่า");
    return Scaffold(
      appBar: AppBar(
        title: Text("random game"),
        backgroundColor: Colors.orange,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [pic, indicate, ans],),
    );
  }
}
