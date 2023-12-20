import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../utils/constants.dart';

class Brand extends StatelessWidget {
 
  final double Height;
  final String brand;

  final String brandText;
  final String brandText2;
  final Color colors;
  final Color txtColor;
  
  const Brand(
      {
        this.Height =40,
        this.txtColor = Constants.black,
        this.colors=Constants.white,
        required this.brand,
      required this.brandText,
      this.brandText2 = "",
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: 
      [
      
       Container(
        height: Height,
        child: Image.asset(brand,fit: BoxFit.fill,),),
        // Chip(
        //   label: Text(brand),
        //   color:MaterialStatePropertyAll(colors),
        //   labelStyle:  TextStyle(
        //       color: txtColor, fontWeight: FontWeight.bold),
        // ),
        const SizedBox(
          width: 5,
        ),
        Text(brandText),
        const SizedBox(
          width: 5,
        ),
        brandText2 != "" ? Text(brandText2, style: TextStyle(
          color: Constants.appColor
        ),) : SizedBox.shrink(),
      ],
    );
  }
}
