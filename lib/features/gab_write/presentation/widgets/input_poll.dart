import 'package:flutter/material.dart';
import 'package:kim/utils/constants.dart';

class InputPoll extends StatelessWidget {
  final String text;
  const InputPoll({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329,
      height: 32,
      
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xFF444446),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: .1, color: Color.fromRGBO(123, 123, 132, 1)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: TextField(
      cursorHeight: 25,
        style: TextStyle(
          color: Constants.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration.collapsed(
          
          hintText: text, hintStyle: TextStyle(
color: Color(0xFF7C7C80),
        )),
      ),
    );
  }
}
