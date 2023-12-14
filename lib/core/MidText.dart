import 'package:flutter/material.dart';

class MidText extends StatelessWidget {
   final String text;
   final double size;
  const MidText({ this.size = 15, super.key, required this.text});
  

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: size, fontWeight: FontWeight.w300),);
  }
}