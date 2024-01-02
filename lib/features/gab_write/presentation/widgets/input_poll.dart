import 'package:flutter/material.dart';
import 'package:kim/utils/constants.dart';

class InputPoll extends StatelessWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final Color? backgroundColor;
  final TextEditingController controller;

   InputPoll({required this.text, required this.onChanged, super.key, this.backgroundColor=const Color(0xFF444446), required this.controller,});
 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329,
      height: 46,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: backgroundColor ,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: .1, color: Color.fromRGBO(123, 123, 132, 1)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: TextField(
        cursorHeight: 20,
        onChanged: onChanged,
        
        style: TextStyle(
          color: Colors.black,
          fontSize: Constants.smFont,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
            border: InputBorder.none,
            // filled: true,
            // fillColor: Colors.transparent,
            // hoverColor: Colors.transparent,
            hintText: "항목 입력",
            hintStyle: TextStyle(
              color: Color(0xFF7C7C80),
            )),
      ),
    );
  }
}
