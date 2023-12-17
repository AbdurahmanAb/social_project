import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/utils/constants.dart';

class Tags extends StatelessWidget {
  final String name;
  final Color color;
  const Tags({this.color=Constants.bottom, required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(label:  Text(name) ,color:MaterialStatePropertyAll(color),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)) , );
  }
}