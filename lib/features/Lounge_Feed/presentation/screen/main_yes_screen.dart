import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:kim/core/bottom_bar.dart';
import 'package:kim/core/custom_check_box.dart';

import 'package:kim/core/drawer/custom_drawer.dart';

import 'package:kim/core/MyBottomSheet.dart';
import 'package:kim/core/link_preview.dart';

import 'package:kim/core/modal.dart';
import 'package:kim/core/report_bottom.dart';
import 'package:kim/core/ui/avatar.dart';
import 'package:kim/core/ui/top_buttons.dart';
import 'package:kim/core/topbar.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/RadioButton.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/comment.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/long_post.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/post_card.dart';
import 'package:kim/features/feed/presentation/widgets/custom_polls.dart';
import 'package:kim/features/feed/presentation/widgets/feed_comment_field.dart';
import 'package:kim/features/profile/presentation/screen/others_profile_thumbnail.dart';
import 'package:kim/features/profile/presentation/screen/profile_thumbnail.dart';
import 'package:kim/utils/constants.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

import '../../../../core/radio_button_group.dart';
import '../../../../core/text/HeaderText.dart';
import '../../../../core/ui/app_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool disabled = true;
  bool show = true;
  bool disabledCheck = true;

  void Open() {
    _scaffoldKey.currentState!.openDrawer();
  }
void initState(){
  super.initState();
  Timer(Duration(seconds: 5), () { 
setState(() {
  show = false;
});

  });
 // Get.showSnackbar(GetSnackBar(duration: Duration(seconds: 2), backgroundColor: Constants.white, icon:  Image.asset("assets/feed/icon_popup.png"),));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          child: Stack(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      TopBar(Triger: Open),
                      TopButtons(),
                    ],
                  ),
                  Container(
                    color: Constants.Iconbg,
                    padding: EdgeInsets.only(
                        top: 5,
                        right: Constants.height10,
                        left: Constants.height10,
                        bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [Text("최신순"), Icon(Icons.arrow_drop_down)],
                        ),
                        GestureDetector(
                            onTap: () {
                              Get.toNamed("/search");
                            },
                            child: Image.asset("assets/Lounge/icon_search.png"))
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const PostCard(),
                          SizedBox(
                            height: 5,
                          ),

                          //to show the report bottomSheet
                          GestureDetector(
                              onTap: () {
                                       Get.toNamed("/feed?id=3");
                                ///The ReusableBottom Sheet that Accept argument and displays them
                                //Arguments ("first text", " img url 1","img url 2","second text", "button text")
                                //There are also optional argument like  third text and third icon and onTap

                                // MyBottomSheet.showBottomSheet(
                                //     context,
                                //     "신고하기",
                                //     "assets/feed/icon_warning.png",
                                //     "assets/feed/icon_hide.png",
                                //     "숨기기",
                                //     "닫기", () {
                                //   Get.back();
                                //   ReportBottomSheet.showBottomSheet(context);
                                // });
                              },
                              child: LongPost(
                                img: "assets/avatar/post5.jpg",
                                hasAd: true,
                              )),
                          SizedBox(
                            height: Constants.height10,
                          ),
                          //the radio select Container
                          RadioButton(),
                          SizedBox(
                            height: 10,
                          ),

                          SizedBox(
                            height: Constants.height10,
                          ),

                          //Question for Multi Select CheckBox
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: Constants.height20,
                                horizontal: Constants.height10),
                            decoration: BoxDecoration(
                                color: const Color(0xFF545456),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Header(
                                  text: "최고의 캠핑 패스티발은?",
                                  size: 14,
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                const Text("복수 선택 불가"),
                                SizedBox(
                                  height: Constants.height10,
                                ),
                                //CheckBox list
                                CustomCheckBox(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: Constants.height20,
                                horizontal: Constants.height10),
                            decoration: BoxDecoration(
                                color: const Color(0xFF545456),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Header(
                                  text: "최고의 캠핑 패스티발은?",
                                  size: 14,
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                const Text("복수 선택 불가"),
                                SizedBox(
                                  height: Constants.height10,
                                ),
                                LayoutBuilder(builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return CustomPolls();
                                }),
                                SizedBox(
                                  height: Constants.height10,
                                ),
                                // AppButton(
                                //   text: "투표하기",
                                //   disabled: disabled,
                                // ),
                                SizedBox(
                                  height: Constants.height10,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "투표참여 : 16명",
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Constants.height15,
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.toNamed("/textFeed");
                            },
                            child: LongPost(
                              hasTitle: false,
                              
                                text:"가치를 만물은 뭇 피고, 꽃이 품에 커다란 봄날의 보라. 우는 그리워 이름을 써 사랑과 봄이 이름을 계십니다. 가을 이 위에 아직 잔디가 있습니다.",
                                   
                                Avatar: GestureDetector(
                                  onTap: () {
                                    // Get.toNamed("/profilelg");
                                    OtherProfileShow.showOtherProfile(
                                        context, true, 
                                        "assets/avatar/avatar2.jpg");
                                  },
                                  child: AvatarImg(
                                    ImgUrl: "assets/avatar/avatar2.jpg",
                                
                                  ),
                                )),
                          ),
                     
                        ],
                      ),
                    ),
                  ),
                ],
              ),

         show?    BottomModal():SizedBox.shrink() 
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
