import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'game.dart';

class RealGamePage extends StatefulWidget {
  const RealGamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<RealGamePage> {
  Game? _game;
  final _control = TextEditingController();
  String? guessNum;

  String? feedback;

  @override
  void initState() {
    super.initState();
    _game = Game();
  }

  void dispose() {
    _control.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var ans = buildInputPanel();
    var top = buildHeader();
    var mid = buildMainContent();
    return Scaffold(
      appBar: AppBar(
        title: Text("Guess the number"),
      ),
      body: Container(
        color: Colors.yellow[100],
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [top, mid, ans],
          ),
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      children: [
        Image(
          image: AssetImage("assets/images/logo_number.png"),
          width: 240,
        ),
        Text(
          "Guess The Number",
          style: TextStyle(fontFamily: "Sarabun", fontSize: 25),
        )
      ],
    );
  }

  Widget buildInputPanel() {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(children: [
          Expanded(
            child: TextField(
              controller: _control,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                color: Colors.yellow,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              cursorColor: Colors.yellow,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                isDense: true,
                // กำหนดลักษณะเส้น border ของ TextField ในสถานะปกติ
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                // กำหนดลักษณะเส้น border ของ TextField เมื่อได้รับโฟกัส
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintText: 'Enter the number here',
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  guessNum = _control.text;
                  _control.clear();
                  int? guess = int.tryParse(guessNum!);
                  if (guess != null) {
                    int result = _game!.doGuess(guess);
                    if (result == 0) {
                      _showMaterialDialog("Good Job!",
                          "The answer is $guess \nYou have guess ${_game!.total}\n\n${_game!.getList()}");
                      feedback = "correct!!";
                    }
                    if (result == 1) {
                      feedback = "too high!!";
                    }
                    if (result == -1) {
                      feedback = "too low!!";
                    }
                  }
                });
              },
              child: Text(
                "guess",
                style: TextStyle(color: Colors.white),
              ))
        ]),
      ),
    );
  }

  Widget buildMainContent() {
    return Center(
        child: guessNum == null || feedback == null || guessNum == ""
            ? Column(
                children: [
                  Text("I'm thinking of number between 1 and 100"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Can you guess it?"),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ],
                  )
                ],
              )
            : Column(
                children: [
                  Text(
                    guessNum!,
                    style: TextStyle(fontSize: 80),
                  ),
                  Text(feedback!.toUpperCase()),
                  if (feedback == "correct!!")
                    Center(
                        child: TextButton(
                      onPressed: () {
                        setState(() {
                          _game = Game();
                          guessNum = null;
                          feedback = null;
                        });
                      },
                      child: Text("New game"),
                    ))
                  else
                    Container()
                ],
              ));
  }

  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
