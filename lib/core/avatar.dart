import 'package:flutter/material.dart';

import '../utils/constants.dart';

class AvatarImg extends StatelessWidget {
  final double height;
  const AvatarImg({this.height =40, super.key});

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
                     "assets/join/image.png",
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