import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/text/text_styles.dart';
import '../../../../utils/constants.dart';

class Followers extends StatelessWidget {
  final int followers;
  final int following;
  const Followers(
      {super.key, required this.followers, required this.following});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            InkWell(
onTap: (){
  Get.toNamed("/insight");
},
              child: Text(
                '빛나는_별다방',
                style: TextStyle(
                  color: Constants.white,
                  fontSize: Constants.mdFont + 2,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: Constants.height10,
        ),
        InkWell(
          onTap: (){
            Get.toNamed("/follows");
          },
          child: Row(
            children: [
              
              Text('팔로워  $followers', style: TestStyles.style2),
              SizedBox(
                width: Constants.height20,
              ),
              Text('팔로잉  $following', style: TestStyles.style2)
            ],
          ),
        )
      ],
    );
  }
}
