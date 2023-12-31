import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kim/utils/constants.dart';

class AppButton extends StatefulWidget {
 final String text;
 final String? PrefiximgUrl;
 final bool disabled;



 AppButton({ this.disabled=false, required this.text, super.key, this.PrefiximgUrl, });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Container(width: Constants.screen_width-30,height: Constants.height20*2.2, decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: this.widget.disabled? Constants.disabled:Constants.appColor
      
    ), alignment:Alignment.center ,padding: const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40), child: Text(widget.text, style: const TextStyle( color: Colors.black, fontWeight: FontWeight.w600),) ,);  
  }
}