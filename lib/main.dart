import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButton = 1;
  int rightButton = 1;

  void gotClicked() {
    setState(() {
      leftButton = Random().nextInt(6) + 1;
      rightButton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 6.0, left: 12.0),
              child: TextButton(
                onPressed: () {
                  gotClicked();
                },
                child: Image.asset('images/dice$leftButton.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 12.0, left: 6.0),
              child: TextButton(
                onPressed: () {
                  gotClicked();
                },
                child: Image.asset('images/dice$rightButton.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
