import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/utils/constants.dart';

class CustomAlert extends StatelessWidget {
  final bool? verticaldivider;
  const CustomAlert({super.key, this.verticaldivider=false});

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
        "갭 등록",
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
            Text("글을 등록하시겠습니까?"),
            SizedBox(height: Constants.height10,),
           Divider(color: Constants.chipColor),
           
            IntrinsicHeight(
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: [
                  Text(
                    '취소',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF007AFF),
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                verticaldivider! ?  SizedBox(
                    height: 60,
                    child: VerticalDivider(
                      indent: 0,
                      endIndent: 0,

                    ),
                  ):SizedBox.shrink(),
                  Text(
                    '등록',
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
