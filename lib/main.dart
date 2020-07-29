        import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Center(child: Text('Dice App')),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  final r= new Random();
  var leftdicestate= 1;
  var rightdicestate= 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                leftdicestate= 1 + r.nextInt(6);
              });
            },
            child: Image(
              image: AssetImage('images/dice' + leftdicestate.toString() + '.png'),
            ),
          ),
        ),
        Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightdicestate= 1 + r.nextInt(6);
                });
              },
              child: Image(
                image: AssetImage('images/dice' + rightdicestate.toString() + '.png'),
              ),
            )
        )
      ],
    );
  }
}