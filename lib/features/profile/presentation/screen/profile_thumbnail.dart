import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/core/Row_widget.dart';
import 'package:kim/core/share.dart';
import 'package:kim/core/text/text_styles.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/features/profile/presentation/widgets/followers_folloiwing.dart';
import 'package:kim/features/profile/presentation/widgets/gab_illust.dart';
import 'package:kim/features/profile/presentation/widgets/social_row.dart';
import 'package:kim/features/profile/presentation/widgets/titles_text.dart';
import 'package:kim/utils/constants.dart';

class ProfileThumbnail extends StatelessWidget {
  const ProfileThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    int followers = 0;
    int following = 0;
    return SingleChildScrollView(
      child: Container(
        color: Constants.lightblack,
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(Constants.height20 + 5)),
                    child: Image.asset(
                      "assets/avatar/post2.jpg",
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                      height: Constants.screen_height * .18,
                    )),
                Positioned(
                  
                    top: Constants.height15,
                    left: Constants.height10,
                    //width: Constants.screen_width *1,
                    child: GestureDetector(
                      onTap: (){
                      Get.back();
                      },
                      child: Image.asset("assets/icons/button_closed.png"))),
                Positioned(
                  top: Constants.height15,
                  right: Constants.height10,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.back();
                          Share.showBottomSheet(context);
                        },
                        child: Image.asset("assets/icons/button_share.png")),
                      SizedBox(
                        width: Constants.height10,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Constants.height10 * 5),
                            color: Constants.white,
                          ),
                          padding: EdgeInsets.all(Constants.height15 / 3),
                          child: Image.asset(
                            "assets/icons/icon_component.png",
                          ))
                    ],
                  ),
                ),
                Positioned(
                    bottom: Constants.height15,
                    right: Constants.height10,
                    child: Container(
                        padding: EdgeInsets.only(
                            top: 4, bottom: 4, left: 8, right: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Constants.white),
                        child: Text(
                          '프로필 편집',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF7C7C80),
                            fontSize: Constants.smFont,
                            fontWeight: FontWeight.w700,
                          ),
                        ))),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              transform: Matrix4.translationValues(
                  0, -Constants.screen_height * .02, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AvatarImg(
                    ImgUrl: "assets/avatar/avatar5.jpg",
                    height: 67,
                    width: 63,
                  ),
                  SizedBox(
                    width: Constants.height20,
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: Constants.height20 * 1.5),
                      child: Followers(
                        followers: followers,
                        following: following,
                      ))
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: Constants.height10),
                child: SocialWidget()),
            SizedBox(
              height: Constants.height10,
            ),
            Divider(),
            SizedBox(
              height: Constants.height10,
            ),
            TitleText(),
         GabIllust()
          ],
        ),
      ),
    );
  }
}

class ProfileThumbnailShow {
  static void showProfileThumnail(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        constraints: BoxConstraints(maxHeight: Constants.screen_height * .84),
        context: context,
        builder: (context) => ProfileThumbnail());
  }
}
