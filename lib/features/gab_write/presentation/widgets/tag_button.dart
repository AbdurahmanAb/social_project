import 'package:flutter/material.dart';
import 'package:kim/utils/constants.dart';

class TagButton extends StatelessWidget {
  final String txt;
  final Color colors;
  const TagButton({required this.colors, required this.txt, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 32,
   decoration: BoxDecoration(
       color: colors,
       borderRadius: BorderRadius.circular(12)

   ),
      child: Center(child: Text(txt, style: TextStyle(
        color: Constants.black,
        fontWeight: FontWeight.bold
      ),)),
    );
  }
}
