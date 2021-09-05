import 'package:flutter/material.dart';

class RealGamePage extends StatefulWidget {
  const RealGamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<RealGamePage> {
  @override
  Widget build(BuildContext context) {
    var ans = Row(children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderSide: BorderSide(color: Colors.pink)),)
        ),
      ),
      TextButton(onPressed: (){}, child: Text("submit"))
    ]);
    var title = Text(
      "Guess The Number",
      style: TextStyle(),
    );

    var pic = Image(
      image: AssetImage("assets/images/logo_number.png"),
      width: 240,
    );
    var top = Column(
      children: [pic, title],
    );
    var indicate = Center(child: Text("มากกว่า"));
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [top, indicate, ans],
        ),
      ),
    );
  }
}
