import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/core/share/Shareavatar.dart';
import 'package:kim/core/share/actions.dart';
import 'package:kim/core/share/group_avatar.dart';
import 'package:kim/core/share/socials.dart';
import 'package:kim/core/text/MidText.dart';
import 'package:kim/core/Row_widget.dart';
import 'package:kim/core/text/HeaderText.dart';
import '../../utils/constants.dart';

class Share {
  static void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
      constraints: BoxConstraints(
        minHeight: 0.8,
        maxHeight: Constants.screen_height * 0.8,
      ),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            color: Constants.appBgColor,
            //  padding: EdgeInsets.symmetric(vertical:Constants.height20, horizontal: Constants.height10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 15, horizontal: Constants.height10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(Constants.height10),
                                color: Constants.mainColor,
                                child: Image.asset(
                                    "assets/avatar/App Icon(1).png"),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Header(
                                      text: "iOS 15 Kit for Figma", size: 12),
                                  Text(
                                    "figma.com",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w100),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Constants.Iconbg,
                              borderRadius: BorderRadius.circular(50)),
                          child: const Icon(
                            Icons.close,
                            size: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(),

                SizedBox(
                  height: 85,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>const SizedBox(
                      width: 10,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return index == 1
                          ? GroupAvatar()
                          : ShareAvatar(path: "assets/aavat");
                    },
                  ),
                ),
                const Divider(),

                //Share to Social media
                SizedBox(
                  height: 95,
                  //  width: 60,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Socials();
                    },
                  ),
                ),
                const Divider(),
                Padding(
                  padding: EdgeInsets.all(Constants.height10),
                  child: Container(
                                 //   width: 361,
                                //    height: 48,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFF2C2C2E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 13),
                          decoration: ShapeDecoration(
                            color: Color(0xFF2C2C2E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                             const Text(
                                'Copy Link',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                    
                                ),
                              ),
                              Image.asset("assets/feed/icon_copy.png", height: Constants.height20*1.2,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(Constants.height10),
                  child: ButtonActions(),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text("Edit Actions...",
                          style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
