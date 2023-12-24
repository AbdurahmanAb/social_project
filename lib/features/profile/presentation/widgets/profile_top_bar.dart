import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/utils/constants.dart';

import '../../../../core/text/HeaderText.dart';

class ProfileTopBar extends StatelessWidget {
  final String text;
  final String textRight;
  final IconData icon;
  const ProfileTopBar({this.icon =CupertinoIcons.back, this.textRight="", super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.black,
      padding: EdgeInsets.symmetric(
          vertical: Constants.height20, horizontal: Constants.height15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Icon(icon)),
          Expanded(
              child: Center(
                  child: Header(
            text: text,size: Constants.mdFont + 2,
          ))),
          Text(textRight,style: TextStyle(color: Colors.blue),)
        ],
      ),
    );
  }
}
