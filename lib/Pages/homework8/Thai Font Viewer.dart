import 'package:flutter/material.dart';

class ThaiFontViewer extends StatefulWidget {
  const ThaiFontViewer({Key? key}) : super(key: key);

  @override
  _ThaiFontViewerState createState() => _ThaiFontViewerState();
}

class _ThaiFontViewerState extends State<ThaiFontViewer> {
  var i = 0;

  var fonts = [
    "BaiJamjuree",
    "ChakraPetch",
    "IBMPlexSansThai",
    "Kanit",
    "Mali",
    "Mitr",
    "Pridi",
    "Prompt",
    "Sarabun",
    "Taviraj"
  ];

  @override
  void fontChange(int x) {
    setState(() {
      i = x;
    });
  }

  Widget build(BuildContext context) {
    var text = Expanded(
        child: Center(
      child: Text(
        "การเดินทางขากลับคงจะเหงาน่าดู",
        textAlign: TextAlign.center
        ,
        style: TextStyle(fontSize: 60.0, fontFamily: fonts[i]),
      ),
    ));
    var bot = Column(
      children: [
        Text("Font : ${fonts[i]}"),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < 10; i++)
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        onPressed: () {
                          fontChange(i);
                        },
                        child: Text(fonts[i]),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                        ),
                      ),
                    ),
                ]),
              ),
            ),
          ),
        ]);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Thai Font Viewer".toUpperCase(),
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          color: Colors.teal[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [text, bot],
          ),
        ));
  }
}
