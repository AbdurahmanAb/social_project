import 'dart:ffi';

import 'package:flutter/material.dart';
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
              Stack(
  children: [
   Stack(
  children: [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Constants.appColor,
          width: 3.0,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          "assets/join/image.png",
          height: 50,
        ),
      ),
    ),
    Positioned(
      bottom: 5,
      right: 0,
      child: Image.asset("assets/Lounge/emoji.png",),
    ),
  ],
)
  ],
)
            ],
          )
        ],
      ),
    );
  }
}