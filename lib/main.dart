import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dicee(),
    );
  }
}

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 4;

  void rollDice(){
    setState(() {
      leftDiceNumber  = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dicee"),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset("assets/images/dice$leftDiceNumber.png"),
                  onPressed: (){
                    rollDice();
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset("assets/images/dice$rightDiceNumber.png"),
                  onPressed: (){
                    rollDice();
                  },
                ),
              )
            ],
          ),
        ),
    ),
    );
  }
}

