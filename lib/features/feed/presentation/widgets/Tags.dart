import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/utils/constants.dart';

class Tags extends StatelessWidget {
  final String name;
  final Color color;
  const Tags({this.color=Constants.bottom, required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 3,bottom: 4, right: 9, left: 8),
      decoration: BoxDecoration(
        border:Border.all(width: 1, color: Constants.white),
  borderRadius: BorderRadius.circular(18),
     color: Constants.postColor
      ),
    
child: Text(name),
    );
    
    
   // Chip( label:  Text(name) ,color:MaterialStatePropertyAll(color),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)) , );
  }
}