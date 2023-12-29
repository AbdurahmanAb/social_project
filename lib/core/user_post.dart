import 'package:flutter/cupertino.dart';

import '../utils/constants.dart';
import 'ui/avatar.dart';

class UserPost extends StatelessWidget {
  final bool hasTag;
  const UserPost({this.hasTag= false, super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
            children: [
              const AvatarImg(
            
              ),
              SizedBox(
                width: Constants.height10/2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  const Text(
                    "빛나는_별다방",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
              hasTag?    const Text(
                    "@고아웃#캠핑",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w200),
                  ):SizedBox.shrink() ,
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/Lounge/frame_badge.png"),
                      SizedBox(
                        width: Constants.height10/3,
                      ),
                      Image.asset("assets/Lounge/frame_badge(1).png"),
                      SizedBox(
                        width: Constants.height10/3,
                      ),
                      Image.asset("assets/Lounge/frame_badge(2).png")
                    ],
                  )
              ]  )
               ]   );
  }
}