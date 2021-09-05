import 'dart:math';

import 'package:flutter/material.dart';

class PageRandom extends StatelessWidget {
  const PageRandom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    var output = rng.nextInt(100);
    var starSize = 20.0;
    const paddingSize = 1.0;
    List<Widget> icon = [];
    for(int i =0;i<4;i++){
      icon.add(Padding(
        padding: const EdgeInsets.all(paddingSize),
        child: Icon(
          Icons.star,
          size: starSize,
          color: Colors.orange,
        ),
      ));
    }
    icon.add(Padding(
      padding: const EdgeInsets.all(paddingSize),
      child: Icon(
        Icons.star_border,
        size: starSize,
        color: Colors.orange,
      ),
    ));
    var top = Row(
      //mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.person,
              size: 65.0,
              color: Colors.blue,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "คณธัช ตั้งพัฒนาประดิษฐ์",
              style: TextStyle(fontSize: 20.0),
            ),
            Row(
              children: icon,
            ),
          ],
        ),
      ],
    );
    var mid = Expanded(
      child: Container(
        child: Center(
          child: Text(
            "$output",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 150,
              color: Colors.orange[400],
            ),
          ),
        ),
      ),
    );

    var bottom = Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          onPressed: () {},
          child: Text('RANDOM'),
        ));

    var head = "Guess the number";
    var page = Scaffold(
      appBar: AppBar(
        title: Text(head.toUpperCase()),
      ),
      body: Container(
        color: Colors.yellow[50],
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
