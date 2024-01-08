import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/core/Row_widget.dart';
import 'package:kim/core/share/share.dart';
import 'package:kim/core/text/text_styles.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/long_post.dart';
import 'package:kim/features/explore/presentation/screen/tab_page_two.dart';
import 'package:kim/features/profile/presentation/screen/connection_page.dart';
import 'package:kim/features/profile/presentation/screen/gab_page.dart';
import 'package:kim/features/profile/presentation/widgets/brands_list.dart';
import 'package:kim/features/profile/presentation/widgets/data_followers_folloiwing.dart';
import 'package:kim/features/profile/presentation/widgets/gab_illust.dart';
import 'package:kim/features/profile/presentation/widgets/no_gab.dart';
import 'package:kim/features/profile/presentation/widgets/profile_brand_list.dart';
import 'package:kim/features/profile/presentation/widgets/social_row.dart';
import 'package:kim/features/profile/presentation/widgets/titles_text.dart';
import 'package:kim/utils/constants.dart';

class ProfileThumbnail extends StatefulWidget {
  final String? ImgUrl;
  ProfileThumbnail({super.key, this.ImgUrl });

  @override
  State<ProfileThumbnail> createState() => _ProfileThumbnailState();
}

class _ProfileThumbnailState extends State<ProfileThumbnail>
    with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(
      () {
        setState(() {
          selectedIndex = tabController.index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ///radom boolean value for checking otherpages
    // bool hasBrand = true;

    /// THESE ARE ARGUMENT THAT GOING TO BE PASSED FOR THE FOLLOWERS WIDGET
    int followers = 0;
    int following = 0;
    return SingleChildScrollView(
      child: SafeArea(
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
                          onTap: () {
                            Get.back();
                          },
                          child:
                              Image.asset("assets/icons/button_closed.png"))),
                  Positioned(
                    top: Constants.height15,
                    right: Constants.height10,
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Get.back();
                              Share.showBottomSheet(context);
                            },
                            child:
                                Image.asset("assets/icons/button_share.png")),
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
                            child: InkWell(
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.transparent),
                              onTap: () {
                                Get.back();
                                Get.toNamed("/profileEdit");
                              },
                              child: Image.asset(
                                "assets/icons/icon_component.png",
                              ),
                            ))
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: Constants.height15,
                      right: Constants.height10,
                      child: Container(
                          padding: const EdgeInsets.only(
                              top: 4, bottom: 4, left: 8, right: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Constants.white),
                          child: Text(
                            '프로필 편집',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFF7C7C80),
                              fontSize: Constants.smFont,
                              fontWeight: FontWeight.w700,
                            ),
                          ))),
                ],
              ),

              //The IMAGE PART THAT IS TRANSFORM TO UP TO THE TAKE SMALL SPACE FROM STACK WIDGET

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                transform: Matrix4.translationValues(
                    0, -Constants.screen_height * .02, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AvatarImg(
                      ImgUrl: widget.ImgUrl ?? "assets/avatar/avatar5.jpg",
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
                  child: const SocialWidget()),
              SizedBox(
                height: Constants.height10,
              ),
              const Divider(),
              SizedBox(
                height: Constants.height10,
              ),
           ProfileBrandList(),   //TitleText(),
         
              SizedBox(
                height: Constants.height20 * 1.8,
              ),

              //IF THE FIELDS ARE EMPTY RENDER THIS ILLUSTRATION
              //GabIllust(),
              SizedBox(
                height: Constants.height15 * 2.6,
                child: TabBar(
                    indicatorColor: Constants.appColor,
                    unselectedLabelColor: Constants.white,
                    labelColor: Constants.appColor,
                    indicatorSize: TabBarIndicatorSize.tab,
                    controller: tabController,
                    tabs: [
                      selectedIndex == 0
                          ? Image.asset(
                              "assets/avatar/gab_logo.png",
                            )
                          : Image.asset(
                              "assets/avatar/gab_white.png",
                            ),
                      Text("댓글"),
                      Text("연결")
                    ]),
              ),
              selectedIndex == 0
                  ? GabPage()
                  : selectedIndex == 1
                      ? PageTwo()
                      : ConnectionPage()

              //IF USER HAVE NOGAB RENDER THIS WIDGET
              // Expanded(
              //   child: TabBarView(controller: tabController, children: [
              //                // NoGab(gab: GabEnum.gab),

              //
              //                 NoGab(gab: GabEnum.comment),
              //                 NoGab(gab: GabEnum.connection)
              //               ]),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileThumbnailShow {
  static void showProfileThumnail(context, isFull, [imgUrl]) {
    showModalBottomSheet(
        isScrollControlled: true,
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        constraints: BoxConstraints(
            maxHeight: isFull
                ? Constants.screen_height * .96
                : Constants.screen_height * .86),
        context: context,
        builder: (context) =>
            ProfileThumbnail(ImgUrl: imgUrl != "" ? imgUrl : ""));
  }
}
