import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/utils/constants.dart';

class CustomAlert extends StatelessWidget {
  final bool? verticaldivider;
  final String  title;
  final String subtitle;
  final String option1;
  final String option2;
   CustomAlert({super.key, this.verticaldivider=false, required this.title, required this.subtitle, required this.option1, required this.option2});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      insetPadding: EdgeInsets.zero,
      titleTextStyle: TextStyle(
          color: Constants.black, fontSize: 17, fontWeight: FontWeight.w700),
      backgroundColor: Constants.white,
      contentTextStyle: TextStyle(color: Colors.black),
      title: Text(
      title,
        textAlign: TextAlign.center,
      ),
      alignment: Alignment.center,
      contentPadding: EdgeInsets.zero,
      content: Container(
        height: 100,
        width: Constants.screen_width * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(subtitle),
            SizedBox(height: Constants.height20,),
           Divider(color: Constants.chipColor, height: 0,),
           
            Container(
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: [
                  Text(
                    option1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF007AFF),
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  LayoutBuilder(
                    builder: (context, BoxConstraints constraints) {
                      return Container(
                      height: 62,
                      constraints: BoxConstraints(maxHeight: constraints.maxHeight),
                      width: 2,
                      color: Constants.chipColor,
                      );
                    }
                  ),
                //  VerticalDivider(
                //  thickness: 3,

                //    indent: 0,
                //    endIndent: 0,
                 
                //  ),
                  Text(
                    option2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF007AFF),
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
