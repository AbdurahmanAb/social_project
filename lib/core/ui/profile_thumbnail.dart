import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/utils/constants.dart';

class ProfileThumbnail extends StatelessWidget {
  const ProfileThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    height: Constants.screen_height * .25,
                  )),
              Positioned(
                  top: 15,
                  left: 10,
                  width: Constants.screen_width * .26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/button_closed.png"),
                      Row(
                        children: [
                          Image.asset("assets/icons/button_share.png"),
                          SizedBox(
                            width: Constants.height10,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    Constants.height10 * 5),
                                color: Constants.white,
                              ),
                              padding: EdgeInsets.all(Constants.height15 / 3),
                              child: Image.asset(
                                "assets/icons/icon_component.png",
                              ))
                        ],
                      ),
                    ],
                  )),
              Positioned(
                  bottom: Constants.height15,
                  right: Constants.height10,
                  child: Container(
                      padding:
                          EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Constants.white),
                      child: Text(
                        '프로필 편집',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF7C7C80),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ))),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            transform:
                Matrix4.translationValues(0, -Constants.screen_height * .02, 0),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("data"),
                        ],
                      ),
                      SizedBox(
                  height: Constants.height10/2,
                ),
                      Row(
                        children: [
                          Text("0 follower"),
                          SizedBox(
                            width: Constants.height20,
                          ),
                          Text("0 following")
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(),
          Divider()
        ],
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
