import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({super.key, required this.counter, required this.fontsize});
  final int counter;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$counter",
      style: TextStyle(fontSize: fontsize, color: Colors.black),
    );
  }
}
