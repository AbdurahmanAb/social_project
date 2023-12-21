import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../utils/constants.dart';

class Brand extends StatelessWidget {
 
  final double Height;
  final double fsize;
  final String brand;

  final String brandText;
  final String brandText2;
  final Color colors;
  final Color txtColor;
  
  const Brand(
      {
        this.fsize=14,
        this.Height =20,
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
         SizedBox(
          width:Constants.height10 ,
        ),
        Text(brandText, style: TextStyle(
          fontSize: fsize
        ),),
         SizedBox(
          width:Constants.height10 ,
        ),
        brandText2 != "" ? Text(brandText2, style: TextStyle(
          color: Constants.appColor,
          fontSize: fsize
        ),) : SizedBox.shrink(),
      ],
    );
  }
}
