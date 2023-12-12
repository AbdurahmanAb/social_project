import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
 final String text;

  const AppButton({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: Text(text ));
  }
}