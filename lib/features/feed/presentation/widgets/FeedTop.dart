import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/utils/constants.dart';

import '../../../../core/BottomRadioBar.dart';
class FeedTop extends StatelessWidget {
  const FeedTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.black,
      padding: EdgeInsets.symmetric(vertical: Constants.height20 + 5,horizontal: Constants.height10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector
          (
            onTap: (){
              Get.back();
            },
            child: Icon(CupertinoIcons.back)),
          Row(
            
            children: [
              Image.asset("assets/Lounge/button_share.png"),
              SizedBox(width: Constants.height15,),
              Icon(CupertinoIcons.bell),
               SizedBox(width: Constants.height15,),
              GestureDetector(
                onTap: (){
                  BottomRadioSheet.showBottomSheet(context);
                },
                child: Icon(Icons.more_horiz)), SizedBox(width: Constants.height15,),            ],
          )
        ],
      ),
    );
  }
}