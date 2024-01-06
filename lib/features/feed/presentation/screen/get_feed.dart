import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kim/core/custom_check_box.dart';
import 'package:kim/core/radio_button_group.dart';
import 'package:kim/core/text/link_text.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/comment.dart';
import 'package:kim/features/Lounge_Feed/presentation/widgets/long_post.dart';

import 'package:kim/features/feed/presentation/widgets/feed_comment_field.dart';
import 'package:kim/features/feed/presentation/widgets/FeedTop.dart';

import 'package:kim/features/feed/presentation/widgets/Tags.dart';
import 'package:kim/features/feed/presentation/widgets/custom_polls.dart';
import 'package:kim/features/feed/presentation/widgets/feed_comment_list.dart';
import 'package:kim/features/feed/presentation/widgets/feed_image_list.dart';
import 'package:kim/utils/constants.dart';

import '../../../../core/link_preview.dart';
import '../../../../core/text/HeaderText.dart';
import '../../../../core/ui/avatar.dart';
import '../../../../core/ui/app_button.dart';
import '../../../Lounge_Feed/presentation/widgets/RadioButton.dart';

class Fedd extends StatefulWidget {
  final int id;
  const Fedd({required this.id, super.key});

  @override
  State<Fedd> createState() => _FeddState();
}

class _FeddState extends State<Fedd> {
  bool disabled = true;

  String label = "";
  List<String> assets = [
    "assets/avatar/post1.jpg",
    "assets/avatar/post2.jpg",
    "assets/avatar/post3.jpg",
    "assets/avatar/post5.jpg"
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
                          ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) => SizedBox(
                              height: Constants.height15,
                            ),
                            itemCount: assets.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return FeedImagesList(imgUrl: assets[index]);
                            },
                          ),
                          SizedBox(
                            height: Constants.height10,
                          ),
                          LinkText(text: "https://blog.naver.com/"),
                           SizedBox(
                            height: Constants.height10,
                          ),
                          LinkPreview(url: "https://blog.naver.com/"),
                          SizedBox(
                            height: Constants.height20,
                          ),      RadioButton(),
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

                    //  CustomPolls(),
                    // RealPoll(),

                    // RealPoll(),
  Divider(thickness: 4,color: Constants.appBgColor,),
                    SingleChildScrollView(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return FeedCommentList(
                            text: "우는 그리워 이름을 써 사랑과 봄이 이름을 계십니다. 가면 어머님다..",
                            index: index,
                            imgUrl: "assets/avatar/post2.jpg",
                            brandPost: false,
                          );
                        },
                      ),
                    ),
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
            SingleChildScrollView(child: FeedCommentField()),
          ],
        ),
      ),
    );
  }
}
