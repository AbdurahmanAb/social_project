import 'package:flutter/material.dart';
import 'package:kim/utils/constsnts.dart';

class AppButton extends StatelessWidget {
 final String text;


  const AppButton({ required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: Constants.screen_width-30, decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
      color:Constants.appColor
      
    ), alignment:Alignment.center ,padding: EdgeInsets.only(top: 7, bottom: 7, left: 40, right: 40), child:Text(text, style: TextStyle( color: Colors.black, fontWeight: FontWeight.w600),) ,);  
  }
}