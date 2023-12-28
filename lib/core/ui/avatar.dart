import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kim/features/profile/presentation/screen/profile_thumbnail.dart';

import '../../utils/constants.dart';

class AvatarImg extends StatelessWidget {
  final double height;
  final bool Enableborder;
  final double width;
  final bool? isFull;
  final String ImgUrl;


   //IF the profile is mine it will be full but for others it will be false  
   /// FOR THIS WE USE IS FULL FLAG
  const AvatarImg(
      {this.isFull = false,
      this.Enableborder = true,
      this.width = 46,
      this.ImgUrl = "assets/avatar/avatar5.jpg",
      this.height = 45,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
     // Get.toNamed("/profilelg");
        ProfileThumbnailShow.showProfileThumnail(context,isFull);
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
                  : null,
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    height: height,
                    width: width,
                    ImgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
               // Positioned(bottom: 0, right: 0, child: Image.asset(""))
              ],
            ),
          ),
          //
        ],
      ),
    );
  }
}
