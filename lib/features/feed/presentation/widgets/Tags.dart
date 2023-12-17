import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/utils/constsnts.dart';

class Tags extends StatelessWidget {
  final String name;
  const Tags({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(label:  Text(name) ,color:MaterialStatePropertyAll(Constants.bottom),shape: StadiumBorder(), );
  }
}