import 'package:flutter/material.dart';
import 'package:kim/utils/constants.dart';

class TopText extends StatelessWidget {
  final String text;
  const TopText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(
        color: Constants.appColor
      ),
    );
  }
}