import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kim/core/button.dart';

import '../utils/constants.dart';

class MyBottomSheet {
 static void showBottomSheet(BuildContext context, text1,icon1,icon2, text2, btnTxt, [text3, icon3]) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(Constants.height20),
          height:text3!=null? 300:170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
              color: Constants.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(icon1),
                  SizedBox(
                    width: Constants.height10,
                  ),
                  Text(text1),
                ],
              ),
              Row(
                children: [
                  Image.asset(icon2),
                  SizedBox(
                    width: Constants.height10,
                  ),
                  Text(text2),
                ],
              ),
        text3 != null? Row(
                children: [
                  Image.asset(icon3!),
                  SizedBox(
                    width: Constants.height10,
                  ),
                  Text(text3!),
                ],
              ):SizedBox.shrink(),
              AppButton(text: btnTxt)
            ],
          ),
        );
      },
    );
  }
}
