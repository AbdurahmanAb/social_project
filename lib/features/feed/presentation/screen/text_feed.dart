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

import '../../../../core/link_preview.dart';
import '../../../../core/text/HeaderText.dart';
import '../../../../core/ui/avatar.dart';
import '../../../../core/ui/app_button.dart';

class TextFeed extends StatefulWidget {

  const TextFeed({ super.key});

  @override                                                                                                                     
  State<TextFeed> createState() => _TextFeedState();
}

class _TextFeedState extends State<TextFeed> {
  bool disabled = true;

  String label = "";
  List<String> assets =["assets/avatar/post1.jpg","assets/avatar/post2.jpg","assets/avatar/post3.jpg","assets/avatar/post5.jpg"];
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
                         
                          SizedBox(
                            height: Constants.height20,
                          ),
                          const Text(
                              "올해 중간에 비가와서 쬐끔 힘들었지만 비 온뒤에 날씨가 끝내줘서 밤에 별들을 볼수 있어 너무 좋아음. 장비를 너무 쓸데없이 많이 가져가서 올해는 좀 정리를 해가야겠다."),
                          SizedBox(
                            height: Constants.height20,
                          ),
                      
                          SizedBox(
                            height: Constants.height20,
                          ),

                       
                          SizedBox(
                            height: Constants.height10,
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

                    //  CustomPolls(),
                    // RealPoll(),

                    // RealPoll(),

                    SingleChildScrollView(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return FeedCommentList(
                            text: "가치를 만물은 뭇 피고, 꽃이 품에 커다란 봄날의 보라. 우는 그리워 이름을 써 사랑과 봄이 이름을 계십니다. 가을 이 위에 아직 잔디가 있습니다..",
                            index: index,
                         //   imgUrl: "assets/avatar/post2.jpg",
                            brandPost: false,
                          );
                        },
                      ),
                    ),

               LinkPreview(url: "www.google.com"),
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
