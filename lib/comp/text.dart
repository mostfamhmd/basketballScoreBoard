import 'package:flutter/material.dart';

class NameTeam extends StatelessWidget {
  NameTeam({super.key, required this.nameTeam, required this.fontSize});
  final String nameTeam;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      nameTeam,
      style: TextStyle(fontSize: fontSize, color: Colors.black),
    );
  }
}
