import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kim/core/avatar.dart';
import 'package:kim/utils/constsnts.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.black,
      padding: EdgeInsets.all(Constants.height20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          Row(
         
            children: [
              
              Image.asset("assets/Lounge/button_send.png"),
                      SizedBox(width: Constants.height10,),
                      Image.asset("assets/Lounge/button_alarm.png"),
                  SizedBox(width: Constants.height10,),
         AvatarImg()
            ],
          )
        ],
      ),
    );
  }
}