import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/core/custom_check_box.dart';
import 'package:kim/core/radio_button_group.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/comment.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/long_post.dart';

import 'package:kim/features/feed/presentation/widgets/feed_comment_field.dart';
import 'package:kim/features/feed/presentation/widgets/FeedTop.dart';

import 'package:kim/features/feed/presentation/widgets/Tags.dart';
import 'package:kim/features/feed/presentation/widgets/custom_polls.dart';
import 'package:kim/features/feed/presentation/widgets/feed_comment_list.dart';
import 'package:kim/features/feed/presentation/widgets/feed_image_list.dart';
import 'package:kim/utils/constants.dart';

import '../../../../core/text/HeaderText.dart';
import '../../../../core/ui/avatar.dart';
import '../../../../core/ui/app_button.dart';

class Fedd extends StatefulWidget {
  final int id;
  const Fedd({required this.id, super.key});

  @override
  State<Fedd> createState() => _FeddState();
}

class _FeddState extends State<Fedd> {
  bool disabled = true;

  String label = "";
  List<RadioOption> options = [
    RadioOption("OPT1", "자라섬 재즈/캠핑 패스티벌"),
    RadioOption("OPT2", "군항제 캠핑 패스티벌"),
    RadioOption("OPT3", "고아웃 캠핑 패스티벌"),
    RadioOption("OPT4", "양양 서퍼비치 캠핑 축제")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Constants.Iconbg,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const FeedTop(),
                    Container(
                      color: Constants.mainColor,
                      padding: EdgeInsets.symmetric(
                          vertical: Constants.height20,
                          horizontal: Constants.height10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              const AvatarImg(
                                height: 40,
                              ),
                              SizedBox(
                                width: Constants.height10,
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
                                    height: 5,
                                  ),
                                  const Text(
                                    "@고아웃#캠핑",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                          "assets/Lounge/frame_badge.png"),
                                      SizedBox(
                                        width: Constants.height10,
                                      ),
                                      Image.asset(
                                          "assets/Lounge/frame_badge(1).png"),
                                      SizedBox(
                                        width: Constants.height10,
                                      ),
                                      Image.asset(
                                          "assets/Lounge/frame_badge(2).png")
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: Constants.height10,
                          ),
                          const Text(
                            "올해 고아웃 캠핑 너무 좋았어요~ 행사도 다양하고 사람들도 많이 만나고 내년도 좋은 추억 만들고 싶네요~ 예약 ㄱ ㄱ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          SizedBox(
                            height: Constants.height20,
                          ),
                          const Text(
                              "올해 중간에 비가와서 쬐끔 힘들었지만 비 온뒤에 날씨가 끝내줘서 밤에 별들을 볼수 있어 너무 좋아음. 장비를 너무 쓸데없이 많이 가져가서 올해는 좀 정리를 해가야겠다."),
                          SizedBox(
                            height: Constants.height20,
                          ),
                          Wrap(
                            direction: Axis.horizontal,
                            // alignment: WrapAlignment.spaceBetween,
                            runAlignment: WrapAlignment.start,

                            runSpacing: 5,
                            spacing: 10,
                            children: [
                              Tags(
                                name: "@나이키",
                              ),
                              Tags(name: "@나이키"),
                              Tags(
                                name: "@현대",
                              ),
                              Tags(
                                name: "@프리미어리그",
                              ),
                              Tags(
                                name: "@리그앙",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Constants.height20,
                          ),
                          FeedImagesList(imgUrl: "assets/avatar/post1.jpg"),
                          SizedBox(
                            height: Constants.height10,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.all(Constants.height20),
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
                                      textStyle: TextStyle(
                                          fontSize: Constants.mdFont,
                                          color: Colors.white),
                                      selectedColor: const Color(0xFF363638),
                                      mainColor: const Color(0xFF363638),
                                      selectedIconColor: Constants.appColor,
                                      selectedBorderSide: const BorderSide(
                                          width: 1, color: Constants.appColor),
                                      buttonWidth: constraints.maxWidth,
                                      buttonHeight: 38,
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "투표참여 : 16명",
                                    ),
                                    SizedBox(
                                      height: Constants.height10,
                                    ),
                                    Text("7 일 뒤 종료")
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Constants.height20,
                          ),
                          const Comment(),
                          SizedBox(
                            height: Constants.height20,
                          ),
                        ],
                      ),
                    ),

                    CustomPolls(),
                    // RealPoll(),

                    // RealPoll(),
                  

                    FeedCommentList(
                      text:
                          "우는 그리워 이름을 써 사랑과 봄이 이름을 계십니다. 가을 이 위에 아직 잔디가 있습니다. 지나가는 오면 어머님, 나의 다하지 애기 소학교 이웃 있습니다. 무성할 그리워 하나에 위에 나의 소녀들의 까닭입니다. 보고, 잔디가 말 패, 그러나 위에도 어머님, 까닭입니다. 하늘에는 이름을 소학교 불러 했던 봅니다.",
                      index: 8,
                      brandPost: false,
                    )
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.all(Constants.height10 / 2),
                color: Constants.postColor,
                child: Center(
                  child: Text("댓글 전체보기"),
                )),
            FeedCommentField(),
          ],
        ),
      ),
    );
  }
}
