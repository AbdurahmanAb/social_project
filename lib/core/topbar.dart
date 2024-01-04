
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/features/profile/presentation/screen/profile_thumbnail.dart';
import 'package:kim/utils/constants.dart';

class TopBar extends StatelessWidget {
  final Function Triger;
  const TopBar({required this.Triger, super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.black,
      padding:  EdgeInsets.only(top:Constants.height10, left:Constants.height10, right: Constants.height10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
Triger();
            },
            child: const Icon(Icons.menu)),
          Row(
         
            children: [
              
              Image.asset("assets/Lounge/button_send.png"),
                      SizedBox(width: Constants.height10,),
                      Image.asset("assets/Lounge/button_alarm.png"),
                  SizedBox(width: Constants.height10,),
       GestureDetector(
        onTap:(){
          ProfileThumbnailShow.showProfileThumnail(context, true);
        },
        child: AvatarImg())
            ],
          )
        ],
      ),
    );
  }
}