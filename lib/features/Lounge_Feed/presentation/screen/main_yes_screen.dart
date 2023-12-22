import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:kim/core/BottomBar.dart';
import 'package:kim/core/BottomRadioBar.dart';
import 'package:kim/core/Hamburger.dart';
import 'package:kim/core/text/HeaderText.dart';
import 'package:kim/core/MyBottomSheet.dart';

import 'package:kim/core/ui/Appbutton.dart';
import 'package:kim/core/modal.dart';
import 'package:kim/core/top_buttons.dart';
import 'package:kim/core/topbar.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/Comment.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/LongPostCard.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/post_card.dart';
import 'package:kim/utils/constants.dart';
import 'package:radio_group_v2/radio_group_v2.dart';

import '../../../../core/RadioButtonGroup.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool disabled = true;
  bool show = true;

  String label = "";
  List<RadioOption> options = [
    RadioOption("OPT1", "자라섬 재즈/캠핑 패스티벌"),
    RadioOption("OPT2", "군항제 캠핑 패스티벌"),
    RadioOption("OPT3", "고아웃 캠핑 패스티벌"),
    RadioOption("OPT4", "양양 서퍼비치 캠핑 축제")
  ];
  RadioGroupController myController = RadioGroupController();
  void Open() {
    _scaffoldKey.currentState!.openDrawer();
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
                          GestureDetector(
                              onTap: () {
                                MyBottomSheet.showBottomSheet(
                                    context,
                                    "신고하기",
                                    "assets/feed/icon_warning.png",
                                    "assets/feed/icon_hide.png",
                                    "숨기기",
                                    "닫기");
                              },
                              child: const LongPost(
                                img: "assets/avatar/post5.jpg",
                                hasAd: true,
                              )),
                          SizedBox(
                            height: Constants.height20,
                          ),
                          Padding(
                            padding: EdgeInsets.all(Constants.height15),
                            child: Container(
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
                                    return RadioButtonGroup(
                                        vertical: true,
                                        options: options,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        textStyle: const TextStyle(
                                            fontSize: 15, color: Colors.white),
                                        selectedColor: const Color(0xFF363638),
                                        mainColor: const Color(0xFF363638),
                                        selectedIconColor: Constants.appColor,
                                        selectedBorderSide: const BorderSide(
                                            width: 1,
                                            color: Constants.appColor),
                                        buttonWidth: constraints.maxWidth,
                                        buttonHeight: 42,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        callback: (RadioOption val) {
                                          setState(() {
                                            label = val.label;
                                            disabled = false;
                                          });
                                          print(val);
                                        });
                                  }),
                                  SizedBox(
                                    height: Constants.height10,
                                  ),
                                  AppButton(
                                    text: "투표하기",
                                    disabled: disabled,
                                  ),
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
                                      Text("7 일 뒤 종료")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const LongPost(),
                          const Comment()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              show ? BottomModal() : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
