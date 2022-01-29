import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice'),
          backgroundColor: Colors.red,
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
  int leftnum = 1;
  int rightnum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: <Widget>[
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftnum = Random().nextInt(6) + 1;
                    });
                    print('Left button got pressed');
                  },
                  child: Image.asset('images/dice$leftnum.png')),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightnum = Random().nextInt(6) + 1;
                    });
                    print('Right button got pressed.');
                  },
                  child: Image.asset('images/dice$rightnum.png')),
            )
          ]),
        ),
      ),
    );
  }
}
