import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/features/profile/presentation/screen/gab_page.dart';

import '../../../../core/share.dart';
import '../../../../core/ui/avatar.dart';
import '../../../../utils/constants.dart';
import '../widgets/brands_list.dart';
import '../widgets/data_followers_folloiwing.dart';
import '../widgets/no_gab.dart';
import '../widgets/social_row.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with TickerProviderStateMixin {
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

    bool hasBrand = true;

    /// THESE ARE ARGUMENT THAT GOING TO BE PASSED FOR THE FOLLOWERS WIDGET
    int followers = 0;
    int following = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: Constants.screen_height,
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
                          child: Image.asset("assets/icons/button_closed.png"))),
                  Positioned(
                    top: Constants.height15,
                    right: Constants.height10,
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                      //        Get.back();
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
                            child: GestureDetector(
                              onTap: () {
                             //   Get.back();
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
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                transform: Matrix4.translationValues(
                    0, -Constants.screen_height * .02, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const AvatarImg(
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
                  child: const SocialWidget()),
              SizedBox(
                height: Constants.height10,
              ),
              const Divider(),
              SizedBox(
                height: Constants.height10,
              ),
              //TitleText(),
              Padding(
                padding: EdgeInsets.symmetric
                (vertical:Constants.height10/2, horizontal: Constants.height10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BrandLlist(),
                    SizedBox(height: 5,),
                        Row(
                          
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/avatar/goout.png", height: 28,),
                  SizedBox(height: Constants.height10
                  ,),
                       Container(
                          height: 6,
                          width: 53,
                          decoration: BoxDecoration(
                           //   color: Constants.bottom,
                              borderRadius: BorderRadius.circular(15)),
                          child: FractionallySizedBox(
                            widthFactor: .4,
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                               //  color: Constants.appColor,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: Constants.height10,
                    ),
                    Column(
                      children: [
                        Image.asset("assets/avatar/leauge.png"),
                        SizedBox(
                          height: Constants.height10 *.8,
                        ),
                        Container(
                          height: 7,
                          width: 53,
                          decoration: BoxDecoration(
                              color: Constants.bottom,
                              borderRadius: BorderRadius.circular(15)),
                          child: FractionallySizedBox(
                            widthFactor: .8,
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Constants.appColor,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: Constants.height10,
                    ),
                    Column(
                      children: [
                        Image.asset("assets/avatar/nike.png"),
                         SizedBox(
                          height: Constants.height10 * .8,
                        ),
                        Container(
                          height: 7,
                          width: 53,
                          decoration: BoxDecoration(
                              color: Constants.bottom,
                              borderRadius: BorderRadius.circular(15)),
                          child: FractionallySizedBox(
                            widthFactor: .4,
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Constants.appColor,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Constants.height20 *1.8,
                ),
                Text(
                  '가치를 만물은 뭇 피고, 꽃이 품에 커다란 봄날의 보라. 곳이 뜨거운지라, 심장은 노년에게서 품고 피고, 교향악이다. 착목한는 많이 되는 그러므로 노래하며 피가 위한다.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Constants.smFont,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                  ],
                ),
              ),  SizedBox(
                  height: Constants.height20 *1.8,
                ),
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
              SizedBox(
                child: TabBarView(controller: tabController, children: [
                             // NoGab(gab: GabEnum.gab),
                             
                             
                             GabPage(),
                              NoGab(gab: GabEnum.comment),
                              NoGab(gab: GabEnum.connection)
                            ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}