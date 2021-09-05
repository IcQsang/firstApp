import 'dart:math';

import 'package:flutter/material.dart';

class PageNumber extends StatelessWidget {
  const PageNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    var output = rng.nextInt(100);
    var starSize = 20.0;
    const paddingSize = 1.0;
    List<Widget> icon = [];

    var top = Padding(
        padding: EdgeInsets.fromLTRB(0, 85, 0, 0),
        child:Container(
      child: Column(
        children: [
          Icon(
            Icons.lock_outline,
            size: 100,
            color: Colors.grey,
          ),
          Text(
            "กรุณาใส่รหัสผ่าน",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    ));
    List<Widget> Button_list = [];
    for (int i = 1; i <= 3; i++) {
      List<Widget> temp = [];
      for (int j = 1; j <= 3; j++) {
        var num = i * j;

        temp.add(RawMaterialButton(
          onPressed: () {},
          elevation: 2.0,
          fillColor: Colors.white,
          child: Text("$num"),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        ));
      }
      Row row = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: temp,
      );
      Button_list.add(row);
    }
    Row row = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: Container(
            color: Colors.white,
            width: 40,
            height: 40,
          ),
        ),
        RawMaterialButton(
          onPressed: () {},
          elevation: 2.0,
          fillColor: Colors.white,
          child: Text("0"),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(25, 15, 15, 15),
            child: Icon(Icons.backspace_outlined, size: 30,))
      ],
    );
    Button_list.add(row);

    var mid = Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: Button_list,
      ),
    );

    var bottom = Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextButton(
          onPressed: () {},
          child: Text('ลืมรหัสผ่าน'),
        ));

    var head = "";
    var page = Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[top, mid, bottom],
        ),
      ),
    );

    return page;
  }
}
