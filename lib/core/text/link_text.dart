import 'package:flutter/cupertino.dart';

class LinkText extends StatelessWidget {
  final String text;
  const LinkText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
              text,
                style:const TextStyle(
                  color: Color(0xFF0099FF),
                  fontSize: 14,
                  fontFamily: 'KoPubDotum_Pro',
                  fontWeight: FontWeight.w500,
                 
                ));
  }
}