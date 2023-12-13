import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const AuthButton({required this.text,required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(style: ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.only(top:20, bottom: 20, left: 42, right: 42),)), onPressed: (){}, icon:Icon(icon) , label: Text(text));
}}