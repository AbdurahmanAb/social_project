import 'package:flutter/material.dart';

import '../utils/constants.dart';

class AvatarImg extends StatelessWidget {
  final double height;
  final String ImgUrl;
  const AvatarImg({ this.ImgUrl = "assets/join/image.png",this.height =40, super.key});

  @override
  Widget build(BuildContext context) {
    return      Stack(
  children: [
               Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(18),
                   border: Border.all(
                     color: Constants.appColor,
                     width: 4,
                   ),
                 ),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(12),
                   child: Image.asset(
                    ImgUrl,
                     height: height,
                   ),
                 ),
               ),
               Positioned(
                 bottom: 5,
                 right: 0,
                 child: Image.asset("assets/Lounge/emoji.png",),
               ),
  ],
);
  }
}