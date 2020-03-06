import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(Tap());

class GestureWidget extends StatelessWidget {
  final VoidCallback _onClick;

  GestureWidget(this._onClick);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onClick,
    );
  }
}

class Tap extends StatefulWidget {
  @override
  _TapState createState() => _TapState();
}

class _TapState extends State<Tap> {
  // Random colors
  final List<Color> colors = const [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.yellow
  ];
  Color chosenColor;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureWidget(_onClick),
        backgroundColor: chosenColor,
      ),
    );
  }

  void _onClick() {
    setState(() {
      int randomNum = new Random().nextInt(colors.length);
      chosenColor = colors[randomNum];
    });
  }
}
