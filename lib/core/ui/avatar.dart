import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kim/core/ui/profile_thumbnail.dart';

import '../../utils/constants.dart';

class AvatarImg extends StatelessWidget {
  final double height;
  final bool Enableborder;
  final double width;
  final String ImgUrl;
  const AvatarImg(
      {this.Enableborder = true,
      this.width = 46,
      this.ImgUrl = "assets/avatar/avatar5.jpg",
      this.height = 45,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ProfileThumbnailShow.showProfileThumnail(context);
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Enableborder
                  ? Border.all(
                      color: Constants.appColor,
                      width: 2,
                    )
                  : Border.all(),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: SizedBox(
                child: Image.asset(
                  height: height,
                  width: width,
                  ImgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //
        ],
      ),
    );
  }
}
