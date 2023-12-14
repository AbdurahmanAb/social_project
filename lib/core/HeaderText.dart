import 'package:flutter/material.dart';

class Header extends StatelessWidget {
   final String text;
   final double size;
  const Header({ this.size = 24, super.key, required this.text});
  

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize:size, fontWeight:FontWeight.bold ),);
  }
}