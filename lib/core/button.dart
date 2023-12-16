import 'package:flutter/material.dart';
import 'package:kim/utils/constsnts.dart';

class AppButton extends StatelessWidget {
 final String text;
 final bool disabled;


  const AppButton({this.disabled=false, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: Constants.screen_width-30, decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
    color: this.disabled? Constants.disabled:Constants.appColor
      
    ), alignment:Alignment.center ,padding: const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40), child:Text(text, style: const TextStyle( color: Colors.black, fontWeight: FontWeight.w600),) ,);  
  }
}