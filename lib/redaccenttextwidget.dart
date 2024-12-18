import 'package:flutter/material.dart';

class Redaccenttextwidget extends StatelessWidget {
  String text;
   Redaccenttextwidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.purpleAccent.shade200,fontSize: 30),);
  }
}
