import 'package:flutter/material.dart';
import 'package:kim/core/avatar.dart';

import '../../../../utils/constants.dart';

class ResultBottom{

  static void showResultBottom(BuildContext context ){

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(Constants.height20),
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
              color: Constants.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             AvatarImg(height: 48,),
             Text("말랑한 우동님의 팔로우를 취소 하시겠습니까?"),
             Buttons()
             
            ],
          ),
        );
      },
    );
  } 

}

Widget Buttons(){
return Row(
  children: [
    Container(
      height: 36,
      width: 174,
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
   color: Constants.black,
      ),
      
      child: Center(
        child:Text("닫기")
      ),
    ),
    SizedBox(
      width: Constants.height10,
    ),
     Container(
      height: 36,
      width: 174,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
     color: Constants.pink,
      ),
 
      child: Center(
        child:Text("닫기")
      ),
    ),
  ],
);


}